as yet unclassified
cmdVAction: listElement modifierPressed: modifierPressed selectionIndex: selectionIndex
  "CMD-v - paste object"

  | itemAttribute targetDef def result |
  itemAttribute := listElement itemCache at: selectionIndex.
  targetDef := itemAttribute object.
  def := self objectClipboard.
  result := targetDef pasteTDDefinition: def.
  listElement topez commitTransaction.
  ^ result