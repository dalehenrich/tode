project api
projectLoadConfiguration: projectName version: version repositoryDescription: repositoryDescription loads: loads
  "required args plus reasonable defaults"

  ^ self
    projectLoad: projectName
    selector: #'configuration:'
    repositoryDescription: repositoryDescription
    loads: loads
    version: version