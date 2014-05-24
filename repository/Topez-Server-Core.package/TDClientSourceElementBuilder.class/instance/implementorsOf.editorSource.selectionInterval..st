menu actions - keyboard only
implementorsOf: clientSourceElement editorSource: editorSource selectionInterval: selectionInterval
  "CMD-m - implementorsOf"

  | selectedString defs |
  selectedString := editorSource
    copyFrom: selectionInterval _from
    to: selectionInterval _to.
  ^ self
    implementorsOfItMenuAction: clientSourceElement
    selectedText: selectedString