as yet unclassified
cmdMAction: listElement modifierPressed: modifierPressed selectionIndex: selectionIndex
  "CMD-m - browse implementors"

  | selector defs |
  self object navigateFrame: selectionIndex.
  selector := self object currentFrame selector.
  defs := TDMethodDefinition implementorsOf: selector.
  defs
    edit: nil
    topez: listElement topez
    aspect: #'methodDefinitionList'
    windowName: nil
    windowId: nil
    windowLocation: #'implementors'.
  ^ true