actions
loadProjectUsing: aProjectTool registration: aProjectRegistration
  | loads nodeName loadScript |
  nodeName := self commandMap
    at: 'load'
    ifAbsent: [ 
      aProjectRegistration loads
        ifNotNil: [ :loadList | loads := loadList ]
        ifNil: [ loads := 'default' ].
      ^ aProjectTool
        projectLoad: self projectName
        selector: aProjectRegistration projectSelector
        repositoryDescription: aProjectRegistration repositoryDescription
        loads: loads
        version: aProjectRegistration configurationVersionString ].
  loadScript := aProjectTool topez lookup: self projectPath , '/' , nodeName.
  ^ aProjectTool topez
    evaluateCommandString:
      loadScript printString , '--extensionCall --projectName=' , self projectName