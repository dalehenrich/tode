as yet unclassified
commitVersionsFrom: versionMap
  | newVersionsMap |
  newVersionsMap := Dictionary new.
  versionMap
    keysAndValuesDo: [ :attribute :versionList | 
      | repositoryGroup newVersions branchName |
      branchName := self gitBranchMap at: attribute.
      self checkout: branchName.
      repositoryGroup := MCRepositoryGroup new
        addRepository: self ss3Repo;
        addRepository: self tmpRepo;
        yourself.
      newVersions := OrderedCollection new.
      versionList
        do: [ :versionRef | 
          | newVersion newRef message |
          newVersion := self
            commitVersion: versionRef version
            baseVersionNumber: versionRef versionNumber
            attribute: attribute
            into: self ss3Repo
            repositoryGroup: repositoryGroup
            commitMessage: self commitMessage.
          newRef := GoferResolvedReference
            name: newVersion info name
            repository: self ss3Repo.
          newVersions add: newRef.
          Transcript
            cr;
            show: newVersion printString.
          message := self recommitMessage.
          self
            commitVersion: newVersion
            baseVersionNumber: newRef versionNumber
            attribute: ''
            into: self tmpRepo
            repositoryGroup: repositoryGroup
            commitMessage: message.
          self commitGitWithCommitMessage: message.
          self gitTool gitpushIn: self tmpGitDir with: 'origin ' , branchName ].
      newVersions isEmpty
        ifFalse: [ newVersionsMap at: attribute put: newVersions ] ].
  ^ newVersionsMap