as yet unclassified
cmdVAction: listElement modifierPressed: modifierPressed selectionIndex: selectionIndex
  "CMD-v - paste object"

  | itemAttribute targetDef def |
  itemAttribute := listElement itemCache at: selectionIndex.
  targetDef := itemAttribute object.
  def := self objectClipboard.
  ^ targetDef pasteTDDefinition: def