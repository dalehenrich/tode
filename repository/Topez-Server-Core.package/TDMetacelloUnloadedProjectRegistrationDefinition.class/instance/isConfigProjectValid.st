testing
isConfigProjectValid
  isConfigProjectValid
    ifNil: [ 
      [ 
      isConfigProjectValid := true.
      self projectClassProject ]
        on: Error
        do: [ :ex | isConfigProjectValid := false ] ].
  ^ isConfigProjectValid