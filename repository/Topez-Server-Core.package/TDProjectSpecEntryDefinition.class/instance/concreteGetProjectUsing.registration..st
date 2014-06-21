actions-concrete
concreteGetProjectUsing: aProjectTool registration: aProjectRegistration
  ^ aProjectTool
    projectGet: projectName
    className: aProjectRegistration projectSpecClassName
    selector: aProjectRegistration projectSelector
    repositoryDescription: aProjectRegistration repositoryDescription