as yet unclassified
cmdKeyAction: cmdKey sourceElement: clientSourceElement editorSource: editorSource selectionInterval: selectionInterval
  cmdKey = $N
    ifTrue: [ 
      ^ self
        referencesTo: clientSourceElement
        editorSource: editorSource
        selectionInterval: selectionInterval ].
  ^ false