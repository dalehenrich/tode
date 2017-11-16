as yet unclassified
isMethodForBlock
  self method ifNil: [ ^ false ].
  ^ self method isMethodForBlock