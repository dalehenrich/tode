project api
projectGet: projectName className: className selector: projectSelector repositoryDescription: repositoryDescription
  | metacello |
  metacello := Metacello new.
  metacello perform: projectSelector with: projectName.
  ^ metacello
    className: className;
    repository: repositoryDescription;
    get