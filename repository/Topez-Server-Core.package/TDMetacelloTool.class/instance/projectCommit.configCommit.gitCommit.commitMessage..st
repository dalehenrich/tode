project api
projectCommit: registration configCommit: configCommit gitCommit: gitCommit commitMessage: messageString
  | modified committedVersions |
  modified := registration workingCopiesForCommit select: [ :wc | wc modified ].
  committedVersions := self
    commitWorkingCopies: modified
    repos: registration repositories
    commitMessage: messageString.
  configCommit
    ifTrue: [ 
      registration configurationProjectSpec
        ifNotNil: [ :configSpec | 
          committedVersions
            addAll:
              (self
                projectUpdateAndCommit: registration
                configuration: configSpec
                commitMessage: messageString) ] ].
  (gitCommit and: [ self hasGitRepository: registration ])
    ifTrue: [ self gitCommit: registration commitMessage: messageString ].
  self topez commitTransaction.
  ^ committedVersions