project api
projectGet: projectName className: className selector: projectSelector version: versionString repositoryDescription: repositoryDescription
  | metacello |
  metacello := Metacello new.
  metacello perform: projectSelector with: projectName.
  className ifNotNil: [ metacello className: className ].
  versionString ifNotNil: [ metacello version: versionString ].
  ^ metacello
    repository: repositoryDescription;
    get