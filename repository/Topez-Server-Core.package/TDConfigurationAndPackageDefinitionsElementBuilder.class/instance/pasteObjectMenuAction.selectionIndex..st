menu actions
pasteObjectMenuAction: listElement selectionIndex: selectionIndex
  | itemAttribute targetDef def result |
  itemAttribute := listElement itemCache at: selectionIndex.
  targetDef := itemAttribute object.
  def := self objectClipboard.
  result := targetDef pasteTDDefinition: def.
  ^ result