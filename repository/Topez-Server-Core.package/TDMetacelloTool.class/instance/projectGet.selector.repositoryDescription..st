project api
projectGet: projectName selector: projectSelector repositoryDescription: repositoryDescription
  | metacello |
  metacello := Metacello new.
  metacello perform: projectSelector with: projectName.
  ^ metacello
    repository: repositoryDescription;
    get