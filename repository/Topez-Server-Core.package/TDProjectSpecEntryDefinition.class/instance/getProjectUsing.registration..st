actions
getProjectUsing: aProjectTool registration: aProjectRegistration
  ^ aProjectTool
    projectGet: projectName
    className: aProjectRegistration projectSpecClassName
    selector: aProjectRegistration projectSelector
    version: aProjectRegistration projectVersionString
    repositoryDescription: aProjectRegistration repositoryDescription