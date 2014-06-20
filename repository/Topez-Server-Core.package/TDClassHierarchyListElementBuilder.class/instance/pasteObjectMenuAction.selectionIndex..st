menu actions
pasteObjectMenuAction: listElement selectionIndex: selectionIndex
  | itemAttribute classDef def |
  itemAttribute := listElement itemCache at: selectionIndex.
  classDef := itemAttribute object.
  def := self objectClipboard.
  ^ classDef pasteTDDefinition: def