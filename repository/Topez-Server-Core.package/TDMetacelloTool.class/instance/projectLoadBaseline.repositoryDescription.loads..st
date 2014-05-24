project api
projectLoadBaseline: projectName repositoryDescription: repositoryDescription loads: loads
  "required args plus reasonable defaults"

  ^ self
    projectLoad: projectName
    selector: #'baseline:'
    repositoryDescription: repositoryDescription
    loads: loads