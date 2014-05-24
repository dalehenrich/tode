actions
diffProject: aProjectTool registration: aProjectRegistration
  | nodeName diffScript |
  nodeName := self commandMap
    at: 'diff'
    ifAbsent: [ ^ self concreteDiffProject: aProjectTool registration: aProjectRegistration ].
  diffScript := aProjectTool topez lookup: self projectPath , '/' , nodeName.
  ^ aProjectTool topez
    evaluateCommandString:
      diffScript printString , '--extensionCall --projectName=' , self projectName