as yet unclassified
cmdKeyBlock
  ^ [ :codePoint :selectionBegin :selectionEnd :clientSourceElement | 
  self
    cmdKeyAction: (Character codePoint: codePoint)
    sourceElement: clientSourceElement
    selectionInterval: (selectionBegin to: selectionEnd) ]