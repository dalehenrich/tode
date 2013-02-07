as yet unclassified
cmdNAction: listElement modifierPressed: modifierPressed selectionIndex: selectionIndex
  "CMD-n - browse senders"

  | itemAttribute methodDef defs |
  itemAttribute := listElement itemCache at: selectionIndex.
  methodDef := itemAttribute object.
  defs := TDMethodDefinition sendersOf: methodDef selector.
  defs
    edit: nil
    topez: listElement topez
    aspect: #'methodDefinitionList'
    windowName: nil
    windowId: nil
    windowLocation: #'implementors'.
  ^ true