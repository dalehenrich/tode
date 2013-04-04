as yet unclassified
sendersOf: clientSourceElement editorSource: editorSource selectionInterval: selectionInterval
  "CMD-n - sendersOf"

  | selector defs |
  selector := (editorSource copyFrom: selectionInterval _from to: selectionInterval _to) findSelector.
  defs := TDMethodDefinition sendersOf: selector.
  defs
    edit: nil
    topez: clientSourceElement topez
    aspect: #'methodDefinitionList'
    windowName: nil
    windowId: nil
    windowLocation: #'implementors'.
  ^ true