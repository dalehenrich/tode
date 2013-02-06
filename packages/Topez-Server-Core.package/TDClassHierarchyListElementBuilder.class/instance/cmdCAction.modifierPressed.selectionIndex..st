as yet unclassified
cmdCAction: listElement modifierPressed: modifierPressed selectionIndex: selectionIndex
  "CMD-c - copy object"

  | itemAttribute className def |
  itemAttribute := listElement itemCache at: selectionIndex.
  className := itemAttribute object.
  def := TDClassDefinition className: className.
  self objectClipboard: def.
  ^ STON
    toString:
      {#'addToClipboard:'.
      (def label)}