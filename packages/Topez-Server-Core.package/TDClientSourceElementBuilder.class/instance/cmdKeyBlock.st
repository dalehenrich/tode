as yet unclassified
cmdKeyBlock
  ^ [ :codePoint :selectionBegin :selectionEnd :editorSource :clientSourceElement | 
  self
    cmdKeyAction: (Character codePoint: codePoint)
    sourceElement: clientSourceElement
    editorSource: editorSource
    selectionInterval: (selectionBegin to: selectionEnd) ]