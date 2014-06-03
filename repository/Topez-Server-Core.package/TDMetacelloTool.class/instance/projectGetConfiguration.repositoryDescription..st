project api
projectGetConfiguration: projectName repositoryDescription: repositoryDescription
  ^ self
    projectGet: projectName
    selector: #'configuration:'
    repositoryDescription: repositoryDescription