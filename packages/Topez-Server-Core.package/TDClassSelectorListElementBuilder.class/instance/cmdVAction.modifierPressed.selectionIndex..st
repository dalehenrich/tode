as yet unclassified
cmdVAction: listElement modifierPressed: modifierPressed selectionIndex: selectionIndex
  "CMD-v - paste object"

  | def |
  def := self objectClipboard.
  ^ self theBehavior pasteTDDefinition: def