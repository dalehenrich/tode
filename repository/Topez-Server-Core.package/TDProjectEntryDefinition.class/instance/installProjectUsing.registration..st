actions
installProjectUsing: aProjectTool registration: aProjectRegistration
  self installScript isEmpty
    ifFalse: [ aProjectTool topez evaluateCommandString: self installScript ]