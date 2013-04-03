as yet unclassified
cmdNAction: listElement modifierPressed: modifierPressed selectionIndex: selectionIndex
  "CMD-n - browse senders"

  | itemAttribute classAttributes selector defs |
  itemAttribute := listElement itemCache at: selectionIndex.
  classAttributes := itemAttribute object.
  selector := classAttributes at: 3.
  defs := TDMethodDefinition sendersOf: selector.
  defs
    edit: nil
    topez: listElement topez
    aspect: #'methodDefinitionList'
    windowName: nil
    windowId: nil
    windowLocation: #'implementors'.
  ^ true