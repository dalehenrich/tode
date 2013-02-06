as yet unclassified
cmdVAction: listElement modifierPressed: modifierPressed selectionIndex: selectionIndex
  "CMD-v - paste object"

  | itemAttribute className cls def |
  itemAttribute := listElement itemCache at: selectionIndex.
  className := itemAttribute object.
  cls := Smalltalk classNamed: className.
  def := self objectClipboard.
  ^ cls pasteTDDefinition: def