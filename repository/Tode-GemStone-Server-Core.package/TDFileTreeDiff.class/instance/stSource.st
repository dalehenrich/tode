as yet unclassified
stSource
  self editOp = 'A'
    ifTrue: [ ^ self stSource: self remote ].
  ^ self stSource: self local