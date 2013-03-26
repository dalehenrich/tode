as yet unclassified
cmdMAction: listElement modifierPressed: modifierPressed selectionIndex: selectionIndex
  "CMD-m - browse implementors"

  | itemAttribute def defs |
  itemAttribute := listElement itemCache at: selectionIndex.
  def := itemAttribute object.
  defs := def implementorsOf.
  defs
    edit: nil
    topez: listElement topez
    aspect: #'methodDefinitionList'
    windowName: nil
    windowId: nil
    windowLocation: #'implementors'.
  ^ true