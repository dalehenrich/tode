menu actions
sendersOf: clientSourceElement editorSource: editorSource selectionInterval: selectionInterval
  "CMD-n - sendersOf"

  | selectedString defs |
  selectedString := editorSource
    copyFrom: selectionInterval _from
    to: selectionInterval _to.
  ^ self sendersOfItMenuAction: clientSourceElement selectedText: selectedString