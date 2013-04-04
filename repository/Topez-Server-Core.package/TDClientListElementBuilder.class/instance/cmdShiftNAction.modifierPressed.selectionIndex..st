as yet unclassified
cmdShiftNAction: listElement modifierPressed: modifierPressed selectionIndex: selectionIndex
  "CMD-N - references to"

  | cls aVariableOrClassName defs |
  cls := self selectedClass: listElement selectionIndex: selectionIndex.
  aVariableOrClassName := cls name asString.
  defs := TDMethodDefinition referencesTo: aVariableOrClassName isMeta: false isMeta in: nil.
  defs
    edit: nil
    topez: listElement topez
    aspect: #'methodDefinitionList'
    windowName: nil
    windowId: nil
    windowLocation: #'implementors'.
  ^ true