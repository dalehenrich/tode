actions
getProjectUsing: aProjectTool registration: aProjectRegistration
  | loads nodeName getScript |
  nodeName := self commandMap
    at: 'get'
    ifAbsent: [ 
      aProjectRegistration loads
        ifNotNil: [ :loadList | loads := loadList ]
        ifNil: [ loads := 'default' ].
      Transcript
        cr;
        show: 'get ' , self projectName.
      ^ aProjectTool
        projectGet: projectName
        selector: aProjectRegistration projectSelector
        repositoryDescription: aProjectRegistration repositoryDescription ].
  getScript := aProjectTool topez lookup: self projectPath , '/' , nodeName.
  ^ aProjectTool topez
    evaluateCommandString:
      getScript printString , '--extensionCall --projectName=' , self projectName