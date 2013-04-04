as yet unclassified
referencesTo: clientSourceElement editorSource: editorSource selectionInterval: selectionInterval
  "CMD-N - references to"

  | aVariableOrClassName defs |
  aVariableOrClassName := editorSource copyFrom: selectionInterval _from to: selectionInterval _to.
  defs := TDMethodDefinition referencesTo: aVariableOrClassName isMeta: false in: self theClass.
  defs
    edit: nil
    topez: clientSourceElement topez
    aspect: #'methodDefinitionList'
    windowName: nil
    windowId: nil
    windowLocation: #'implementors'.
  ^ true