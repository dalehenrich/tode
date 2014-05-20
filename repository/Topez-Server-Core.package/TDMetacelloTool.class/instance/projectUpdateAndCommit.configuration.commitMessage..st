project api
projectUpdateAndCommit: registration configuration: configSpec commitMessage: messageString
  MetacelloToolBox
    updateDevelopment: configSpec versionString
    for: configSpec name
    updateProjects: false
    description: ''.
  ^ self
    projectCommitConfiguration: registration
    configuration: configSpec
    commitMessage: messageString