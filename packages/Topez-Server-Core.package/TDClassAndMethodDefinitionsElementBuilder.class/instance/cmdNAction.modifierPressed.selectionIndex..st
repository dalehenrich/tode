as yet unclassified
cmdNAction: listElement modifierPressed: modifierPressed selectionIndex: selectionIndex
  "CMD-n - browse senders"

  | itemAttribute def defs |
  itemAttribute := listElement itemCache at: selectionIndex.
  def := itemAttribute object.
  defs := def sendersOf.
  defs
    edit: nil
    topez: listElement topez
    aspect: #'methodDefinitionList'
    windowName: nil
    windowId: nil
    windowLocation: #'implementors'.
  ^ true