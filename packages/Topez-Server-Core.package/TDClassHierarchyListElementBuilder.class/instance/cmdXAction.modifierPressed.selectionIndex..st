as yet unclassified
cmdXAction: listElement modifierPressed: modifierPressed selectionIndex: selectionIndex
  "CMD-x - cut object"

  | itemAttribute className def |
  itemAttribute := listElement itemCache at: selectionIndex.
  className := itemAttribute object.
  def := TDClassDefinition className: className.
  self objectClipboard: def.
  def theClass removeFromSystem.
  ^ STON
    toString:
      {#'addToClipboard:'.
      (def label)}