as yet unclassified
cmdKeyAction: cmdKey sourceElement: clientSourceElement editorSource: editorSource selectionInterval: selectionInterval
  cmdKey = $b
    ifTrue: [ ^ self browseClass: clientSourceElement editorSource: editorSource selectionInterval: selectionInterval ].
  cmdKey = $N
    ifTrue: [ ^ self referencesTo: clientSourceElement editorSource: editorSource selectionInterval: selectionInterval ].
  cmdKey = $m
    ifTrue: [ ^ self implementorsOf: clientSourceElement editorSource: editorSource selectionInterval: selectionInterval ].
  cmdKey = $n
    ifTrue: [ ^ self sendersOf: clientSourceElement editorSource: editorSource selectionInterval: selectionInterval ].
  ^ false