as yet unclassified
implementorsOf: clientSourceElement editorSource: editorSource selectionInterval: selectionInterval
  "CMD-m - implementorsOf"

  | selector defs |
  selector := (editorSource copyFrom: selectionInterval _from to: selectionInterval _to) findSelector.
  defs := TDMethodDefinition implementorsOf: selector.
  defs
    edit: nil
    topez: clientSourceElement topez
    aspect: #'methodDefinitionList'
    windowName: nil
    windowId: nil
    windowLocation: #'implementors'.
  ^ true