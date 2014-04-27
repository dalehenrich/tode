cls
clscopy
  "
  cls copy <class-name> <new-name>
      copy @<class-path> <new-name>
"

  | theClass clsName newName |
  clsName := tokens at: 2.
  newName := tokens at: 3.
  theClass := self resolveClassReference: clsName.
  ^ self clscopy: theClass to: newName