project api
projectGetConfiguration: projectName version: version repositoryDescription: repositoryDescription
  ^ self
    projectGet: projectName
    className: nil
    selector: #'configuration:'
    version: version
    repositoryDescription: repositoryDescription