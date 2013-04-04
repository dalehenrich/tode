as yet unclassified
cmdKeyAction: cmdKey sourceElement: clientSourceElement editorSource: editorSource selectionInterval: selectionInterval
  cmdKey = $k
    ifTrue: [ ^ self setBreakPoint: selectionInterval ].
  cmdKey = $B
    ifTrue: [ ^ self browseClassHierarchy: clientSourceElement selectionInterval: selectionInterval ].
  ^ super
    cmdKeyAction: cmdKey
    sourceElement: clientSourceElement
    editorSource: editorSource
    selectionInterval: selectionInterval