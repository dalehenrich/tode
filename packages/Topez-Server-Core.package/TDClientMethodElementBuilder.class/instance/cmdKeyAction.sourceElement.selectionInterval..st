as yet unclassified
cmdKeyAction: cmdKey sourceElement: clientSourceElement selectionInterval: selectionInterval
  cmdKey = $b
    ifTrue: [ ^ self browseClass: clientSourceElement selectionInterval: selectionInterval ].
  cmdKey = $k
    ifTrue: [ ^ self setBreakPoint: selectionInterval ].
  cmdKey = $m
    ifTrue: [ ^ self implementorsOf: clientSourceElement selectionInterval: selectionInterval ].
  cmdKey = $n
    ifTrue: [ ^ self sendersOf: clientSourceElement selectionInterval: selectionInterval ].
  cmdKey = $B
    ifTrue: [ ^ self browseClassHierarchy: clientSourceElement selectionInterval: selectionInterval ].
  cmdKey = $N
    ifTrue: [ ^ self referencesTo: clientSourceElement selectionInterval: selectionInterval ].
  ^ false