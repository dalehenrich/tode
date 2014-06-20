project api
projectGet: projectName selector: projectSelector repositoryDescription: repositoryDescription
  ^ self
    projectGet: projectName
    className: nil
    selector: projectSelector
    repositoryDescription: repositoryDescription