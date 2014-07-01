actions-concrete
concreteGetProjectUsing: aProjectTool registration: aProjectRegistration
  ^ aProjectTool
    projectGet: projectName
    className: aProjectRegistration projectSpecClassName
    selector: aProjectRegistration projectSelector
    version: aProjectRegistration projectVersion
    repositoryDescription: aProjectRegistration repositoryDescription