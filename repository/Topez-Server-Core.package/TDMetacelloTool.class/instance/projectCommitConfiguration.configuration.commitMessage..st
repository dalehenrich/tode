project api
projectCommitConfiguration: registration configuration: configSpec commitMessage: messageString
  | committedVersions wc |
  wc := configSpec projectPackage workingCopy.
  wc modified
    ifFalse: [ ^ #() ].
  ^ self
    commitWorkingCopies: {wc}
    repos: registration repositories
    commitMessage: messageString