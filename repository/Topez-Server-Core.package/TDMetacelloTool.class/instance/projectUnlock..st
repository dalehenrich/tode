project api
projectUnlock: registration
  | selector metacello |
  selector := registration projectSelector.
  metacello := Metacello new.
  metacello perform: selector with: registration projectName.
  metacello repository: registration repositoryDescription.
  registration projectSpecClassName
    ifNotNil: [ :className | metacello className: className ].
  registration applyVersionStringToMetacello: metacello.
  ^ metacello unlock