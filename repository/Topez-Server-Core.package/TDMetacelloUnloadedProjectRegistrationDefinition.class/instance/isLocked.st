testing
isLocked
  self registration ifNotNil: [ ^ self registration locked ].
  ^ false