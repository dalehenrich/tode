actions
loadProjectUsing: aProjectTool registration: aProjectRegistration
  aProjectRegistration isLoadedInImage
    ifTrue: [ ^ super loadProjectUsing: aProjectTool registration: aProjectRegistration ].
  aProjectTool topex executeCommandString: self installScript.
  ^ aProjectTool topex executeCommandString: self loadScript