accessing
projectClassProject
  self projectSpec projectClass ifNil: [ ^ nil ].
  ^ [ self projectSpec projectClassProject ]
    on: Error
    do: [ :ignored | 
      isConfigProjectValid := false.
      nil ]