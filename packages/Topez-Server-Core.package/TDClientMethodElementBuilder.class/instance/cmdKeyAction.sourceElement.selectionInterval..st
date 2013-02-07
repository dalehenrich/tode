as yet unclassified
cmdKeyAction: cmdKey sourceElement: clientSourceElement selectionInterval: selectionInterval
  cmdKey = $k
    ifTrue: [ ^ self setBreakPoint: selectionInterval ].
  cmdKey = $b
    ifTrue: [ ^ self browseClass: clientSourceElement selectionInterval: selectionInterval ].
  ^ false