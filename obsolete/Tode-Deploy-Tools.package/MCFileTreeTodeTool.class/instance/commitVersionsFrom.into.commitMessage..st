as yet unclassified
commitVersionsFrom: versionMap into: targetRepo commitMessage: commitMessage
  | newVersionsMap |
  newVersionsMap := Dictionary new.
  versionMap
    keysAndValuesDo: [ :attribute :versionList | 
      | repositoryGroup newVersions |
      self checkout: (self gitBranchMap at: attribute) andUpdateGitRepos: false.
      repositoryGroup := MCRepositoryGroup new
        addRepository: self ss3Repo;
        addRepository: self tmpGitRepo;
        addRepository: targetRepo;
        yourself.
      newVersions := OrderedCollection new.
      versionList
        do: [ :versionRef | 
          | newVersion newRef message |
          newVersion := self
            commitVersion: versionRef version
            baseVersionNumber: versionRef versionNumber
            attribute: attribute
            into: targetRepo
            repositoryGroup: repositoryGroup
            commitMessage: commitMessage.
          newRef := GoferResolvedReference
            name: newVersion info name
            repository: targetRepo.
          newVersions add: newRef.
          Transcript
            cr;
            show: newVersion printString.
          message := 'ensure ss3 version is in ancestry'.
          self
            commitVersion: newVersion
            baseVersionNumber: newRef versionNumber
            attribute: ''
            into: self tmpGitRepo
            repositoryGroup: repositoryGroup
            commitMessage: message.
          self commitGitWithCommitMessage: message.
          self halt: 'Need to do a git  push here' ].
      newVersions isEmpty
        ifFalse: [ newVersionsMap at: attribute put: newVersions ] ].
  ^ newVersionsMap