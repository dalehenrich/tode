menu actions
pasteObjectMenuAction: listElement selectionIndex: selectionIndex
  | itemAttribute targetDef def |
  itemAttribute := listElement itemCache at: selectionIndex.
  targetDef := itemAttribute object.
  def := self objectClipboard.
  ^ targetDef pasteTDDefinition: def