as yet unclassified
stSource
  self editOp = 'A'
    ifTrue: [ ^ self stSource: self destination ].
  ^ self stSource: self source