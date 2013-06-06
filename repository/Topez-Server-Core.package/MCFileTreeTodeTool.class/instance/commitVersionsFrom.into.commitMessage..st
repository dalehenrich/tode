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
        addRepository: self tmpRepo;
        addRepository: targetRepo;
        yourself.
      newVersions := OrderedCollection new.
      versionList
        do: [ :versionRef | 
          | newVersion newRef |
          newVersion := self
            commitVersion: versionRef version
            baseVersionNumber: versionRef versionNumber
            attribute: attribute
            into: targetRepo
            repositoryGroup: repositoryGroup
            commitMessage: commitMessage.
          newVersions add: newVersion.
          newRef := GoferVersionReference name: newVersion info name.
          self
            commitVersion: newVersion
            baseVersionNumber: newRef versionNumber
            attribute: ''
            into: self tmpRepo
            repositoryGroup: repositoryGroup
            commitMessage: 'ensure ss3 version is in ancestry'.
          self halt: 'Need to do a git commit and push here' ].
      newVersions isEmpty
        ifFalse: [ newVersionsMap at: attribute put: newVersions ] ].
  ^ newVersionsMap