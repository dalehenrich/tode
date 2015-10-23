testing
isValid
  isValid
    ifNil: [ 
      [ 
      isValid := true.
      self repositoryDescription ]
        on: Error
        do: [ :ex | isValid := false ] ].
  ^ isValid