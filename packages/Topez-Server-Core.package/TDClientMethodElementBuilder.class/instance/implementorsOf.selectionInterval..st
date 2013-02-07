as yet unclassified
implementorsOf: clientSourceElement selectionInterval: selectionInterval
  "CMD-m - implementorsOf"

  | gsMethod selector defs |
  gsMethod := self method.
  selector := (gsMethod sourceString copyFrom: selectionInterval _from to: selectionInterval _to) findSelector.
  defs := TDMethodDefinition implementorsOf: selector.
  defs
    edit: nil
    topez: clientSourceElement topez
    aspect: #'methodDefinitionList'
    windowName: nil
    windowId: nil
    windowLocation: #'implementors'.
  ^ true