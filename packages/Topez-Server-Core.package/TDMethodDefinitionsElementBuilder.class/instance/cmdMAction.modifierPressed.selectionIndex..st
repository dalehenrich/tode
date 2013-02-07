as yet unclassified
cmdMAction: listElement modifierPressed: modifierPressed selectionIndex: selectionIndex
  "CMD-m - browse implementors"

  | itemAttribute methodDef defs |
  itemAttribute := listElement itemCache at: selectionIndex.
  methodDef := itemAttribute object.
  defs := TDMethodDefinition implementorsOf: methodDef selector.
  defs
    edit: nil
    topez: listElement topez
    aspect: #'methodDefinitionList'
    windowName: nil
    windowId: nil
    windowLocation: #'implementors'.
  ^ true