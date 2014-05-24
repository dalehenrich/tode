actions
loadProjectUsing: aProjectTool registration: aProjectRegistration
  | loads nodeName loadScript |
  nodeName := self commandMap
    at: 'load'
    ifAbsent: [ ^ self concreteLoadProjectUsing: aProjectTool registration: aProjectRegistration ].
  loadScript := aProjectTool topez lookup: self projectPath , '/' , nodeName.
  ^ aProjectTool topez
    evaluateCommandString:
      loadScript printString , '--extensionCall --projectName=' , self projectName