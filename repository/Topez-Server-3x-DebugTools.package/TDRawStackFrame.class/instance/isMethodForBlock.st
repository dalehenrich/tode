testing
isMethodForBlock
  self gsMethod ifNil: [ ^ false ].
  ^ self gsMethod isMethodForBlock