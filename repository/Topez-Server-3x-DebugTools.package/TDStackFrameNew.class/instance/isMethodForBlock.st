testing
isMethodForBlock
  self method ifNil: [ ^ false ].
  ^ self method isMethodForBlock