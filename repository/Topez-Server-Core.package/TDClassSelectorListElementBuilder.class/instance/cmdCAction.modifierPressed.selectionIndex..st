as yet unclassified
cmdCAction: listElement modifierPressed: modifierPressed selectionIndex: selectionIndex
  "CMD-c - copy object"

  | itemAttribute def |
  selectionIndex == 0
    ifTrue: [ ^ false ].
  itemAttribute := listElement itemCache at: selectionIndex.
  def := itemAttribute object.
  self objectClipboard: def.
  listElement topez commitTransaction.
  ^ STON
    toString:
      {#'addToClipboard:'.
      (def label)}