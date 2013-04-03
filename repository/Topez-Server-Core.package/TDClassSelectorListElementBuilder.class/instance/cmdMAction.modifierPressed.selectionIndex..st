as yet unclassified
cmdMAction: listElement modifierPressed: modifierPressed selectionIndex: selectionIndex
  "CMD-m - browse implementors"

  | itemAttribute classAttributes selector defs |
  itemAttribute := listElement itemCache at: selectionIndex.
  classAttributes := itemAttribute object.
  selector := classAttributes at: 3.
  defs := TDMethodDefinition implementorsOf: selector.
  defs
    edit: nil
    topez: listElement topez
    aspect: #'methodDefinitionList'
    windowName: nil
    windowId: nil
    windowLocation: #'implementors'.
  ^ true