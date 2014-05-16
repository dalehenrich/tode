project api
projectUpdateAndCommit: registration configuration: configSpec commitMessage: messageString
  | committedVersions wc |
  MetacelloToolBox
    updateDevelopment: configSpec versionString
    for: configSpec name
    updateProjects: false
    description: ''.
  wc := configSpec projectPackage workingCopy.
  wc modified
    ifFalse: [ ^ #() ].
  ^ self
    commitWorkingCopies: {wc}
    repos: registration repositories
    commitMessage: messageString