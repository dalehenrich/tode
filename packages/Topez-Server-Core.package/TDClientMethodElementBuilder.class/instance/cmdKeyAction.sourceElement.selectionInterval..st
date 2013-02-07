as yet unclassified
cmdKeyAction: cmdKey sourceElement: clientSourceElement selectionInterval: selectionInterval
  cmdKey = $b
    ifTrue: [ ^ self browseClass: clientSourceElement selectionInterval: selectionInterval ].
  cmdKey = $k
    ifTrue: [ ^ self setBreakPoint: selectionInterval ].
  cmdKey = $m
    ifTrue: [ ^ self implementorsOf: clientSourceElement selectionInterval: selectionInterval ].
  ^ false