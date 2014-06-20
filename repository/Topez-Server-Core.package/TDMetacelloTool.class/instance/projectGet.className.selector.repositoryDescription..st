project api
projectGet: projectName className: className selector: projectSelector repositoryDescription: repositoryDescription
  | metacello |
  metacello := Metacello new.
  metacello perform: projectSelector with: projectName.
  className ifNotNil: [ metacello className: className ].
  ^ metacello
    repository: repositoryDescription;
    get