as yet unclassified
cmdVAction: listElement modifierPressed: modifierPressed selectionIndex: selectionIndex
  "CMD-v - paste object"

  | def result |
  def := self objectClipboard.
  result := def pasteTDDefinition: def.
  listElement topez commitTransaction.
  ^ result