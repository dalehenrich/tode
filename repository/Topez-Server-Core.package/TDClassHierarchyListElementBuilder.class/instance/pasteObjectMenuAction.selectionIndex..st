menu actions
pasteObjectMenuAction: listElement selectionIndex: selectionIndex
  | itemAttribute classDef def result |
  itemAttribute := listElement itemCache at: selectionIndex.
  classDef := itemAttribute object.
  def := self objectClipboard.
  result := classDef pasteTDDefinition: def.
  listElement topez commitTransaction.
  ^ result