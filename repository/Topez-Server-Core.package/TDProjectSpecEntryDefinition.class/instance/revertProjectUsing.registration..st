actions
revertProjectUsing: aProjectTool registration: aProjectRegistration
  | nodeName revertScript |
  nodeName := self commandMap
    at: 'revert'
    ifAbsent: [ 
      ^ self
        concreteRevertProjectUsing: aProjectTool
        registration: aProjectRegistration ].
  revertScript := aProjectTool topez lookup: self projectPath , '/' , nodeName.
  ^ aProjectTool topez
    evaluateCommandString:
      revertScript printString , '--extensionCall --projectName=' , self projectName