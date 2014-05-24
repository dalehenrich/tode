actions-concrete
concreteSaveProject: aProjectTool registration: aProjectRegistration commitMessage: commitMessage
  ^ aProjectTool
    projectCommit: aProjectRegistration
    commitMessage: commitMessage