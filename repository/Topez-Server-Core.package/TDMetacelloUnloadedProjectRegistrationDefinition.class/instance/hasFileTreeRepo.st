testing
hasFileTreeRepo
  self isValid
    ifFalse: [ ^ false ].
  ^ super hasFileTreeRepo