actions-concrete
concreteGetProjectUsing: aProjectTool registration: aProjectRegistration
  ^ aProjectTool
    projectGet: projectName
    className: self projectSpecClassName
    selector: aProjectRegistration projectSelector
    repositoryDescription: aProjectRegistration repositoryDescription