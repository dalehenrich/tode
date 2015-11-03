testing
isLocked
  self isValid
    ifFalse: [ ^ false ].
  self registration ifNotNil: [ ^ self registration locked ].
  ^ false