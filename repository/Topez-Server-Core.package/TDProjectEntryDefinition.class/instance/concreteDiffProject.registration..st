actions-concrete
concreteDiffProject: aProjectTool registration: aProjectRegistration
  aProjectRegistration isGitDirty
    ifTrue: [ 
      aProjectTool
        gitDiff: aProjectRegistration;
        gitDiffCached: aProjectRegistration ].
  ^ aProjectTool projectDiff: aProjectRegistration