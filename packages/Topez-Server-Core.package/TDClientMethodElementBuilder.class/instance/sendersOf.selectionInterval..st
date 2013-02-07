as yet unclassified
sendersOf: clientSourceElement selectionInterval: selectionInterval
  "CMD-n - sendersOf"

  | meth selector defs |
  meth := self method.
  selector := (meth sourceString copyFrom: selectionInterval _from to: selectionInterval _to) findSelector.
  defs := TDMethodDefinition sendersOf: selector.
  defs
    edit: nil
    topez: clientSourceElement topez
    aspect: #'methodDefinitionList'
    windowName: nil
    windowId: nil
    windowLocation: #'implementors'.
  ^ true