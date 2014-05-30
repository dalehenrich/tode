actions-concrete
concreteDiffProject: aProjectTool registration: aProjectRegistration
  aProjectRegistration isGitDirty
    ifTrue: [ aProjectTool gitDiff: aProjectRegistration ].
  ^ aProjectTool projectDiff: aProjectRegistration