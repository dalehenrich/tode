as yet unclassified
cmdVAction: listElement modifierPressed: modifierPressed selectionIndex: selectionIndex
  "CMD-v - paste object"

  | itemAttribute className cls def result |
  itemAttribute := listElement itemCache at: selectionIndex.
  className := itemAttribute object.
  cls := Smalltalk classNamed: className.
  def := self objectClipboard.
  result := cls pasteTDDefinition: def.
  listElement topez commitTransaction.
  ^ result