as yet unclassified
cmdKeyAction: cmdKey sourceElement: clientSourceElement selectionInterval: selectionInterval
  cmdKey = $N
    ifTrue: [ ^ self referencesTo: clientSourceElement selectionInterval: selectionInterval ].
  ^ false