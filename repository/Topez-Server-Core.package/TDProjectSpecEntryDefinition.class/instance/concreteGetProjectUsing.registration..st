actions-concrete
concreteGetProjectUsing: aProjectTool registration: aProjectRegistration
  ^ aProjectTool
    projectGet: projectName
    selector: aProjectRegistration projectSelector
    repositoryDescription: aProjectRegistration repositoryDescription