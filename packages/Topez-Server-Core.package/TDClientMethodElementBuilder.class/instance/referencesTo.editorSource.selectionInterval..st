as yet unclassified
referencesTo: clientSourceElement editorSource: editorSource selectionInterval: selectionInterval
  "CMD-N - references to"

  | meth aVariableOrClassName defs |
  aVariableOrClassName := editorSource copyFrom: selectionInterval _from to: selectionInterval _to.
  meth := self method.
  defs := TDMethodDefinition referencesTo: aVariableOrClassName isMeta: meth inClass isMeta in: meth inClass.
  defs
    edit: nil
    topez: clientSourceElement topez
    aspect: #'methodDefinitionList'
    windowName: nil
    windowId: nil
    windowLocation: #'implementors'.
  ^ true