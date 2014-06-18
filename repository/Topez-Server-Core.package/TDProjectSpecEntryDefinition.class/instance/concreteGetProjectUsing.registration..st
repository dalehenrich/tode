actions-concrete
concreteGetProjectUsing: aProjectTool registration: aProjectRegistration
  self projectSpec hasClassName
    ifTrue: [ 
      ^ aProjectTool
        projectGet: projectName
        className: self projectSpec className
        selector: aProjectRegistration projectSelector
        repositoryDescription: aProjectRegistration repositoryDescription ]
    ifFalse: [ 
      ^ aProjectTool
        projectGet: projectName
        selector: aProjectRegistration projectSelector
        repositoryDescription: aProjectRegistration repositoryDescription ]