as yet unclassified
selector
  self isMethodForBlock
    ifTrue: [ ^ self object homeMethod selector ].
  ^ self object selector