as yet unclassified
referencesTo: clientSourceElement selectionInterval: selectionInterval
  "CMD-N - references to"

  | meth aVariableOrClassName defs |
  meth := self method.
  aVariableOrClassName := meth sourceString copyFrom: selectionInterval _from to: selectionInterval _to.
  defs := TDMethodDefinition referencesTo: aVariableOrClassName isMeta: meth inClass isMeta in: meth inClass.
  defs
    edit: nil
    topez: clientSourceElement topez
    aspect: #'methodDefinitionList'
    windowName: nil
    windowId: nil
    windowLocation: #'implementors'.
  ^ true