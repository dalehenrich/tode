as yet unclassified
cmdKeyBlock
  ^ [ :codePoint :selectionBegin :selectionEnd :editorSource :clientSourceElement | 
  | result |
  result := self
    cmdKeyAction: (Character codePoint: codePoint)
    sourceElement: clientSourceElement
    editorSource: editorSource
    selectionInterval: (selectionBegin to: selectionEnd).
  result
    ifTrue: [ clientSourceElement topez commitTransaction ].
  result ]