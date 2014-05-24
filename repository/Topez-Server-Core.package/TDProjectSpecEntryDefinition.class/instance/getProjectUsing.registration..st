actions
getProjectUsing: aProjectTool registration: aProjectRegistration
  | loads nodeName getScript |
  nodeName := self commandMap
    at: 'get'
    ifAbsent: [ ^ self concreteGetProjectUsing: aProjectTool registration: aProjectRegistration ].
  getScript := aProjectTool topez lookup: self projectPath , '/' , nodeName.
  ^ aProjectTool topez
    evaluateCommandString:
      getScript printString , '--extensionCall --projectName=' , self projectName