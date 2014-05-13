project api
projectCommit: registration gitCommit: gitCommit commitMessage: messageString
  | modified committedVersions |
  modified := registration workingCopies select: [ :wc | wc modified ].
  committedVersions := self
    commitWorkingCopies: modified
    repos: registration repositories
    commitMessage: messageString.
  gitCommit
    ifTrue: [ self gitCommit: registration commitMessage: messageString ].
  self topez commitTransaction.
  ^ committedVersions