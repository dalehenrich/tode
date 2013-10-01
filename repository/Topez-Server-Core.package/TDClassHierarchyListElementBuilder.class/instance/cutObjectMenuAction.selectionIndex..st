menu actions
cutObjectMenuAction: listElement selectionIndex: selectionIndex
  | itemAttribute className def |
  itemAttribute := listElement itemCache at: selectionIndex.
  className := itemAttribute object.
  def := TDClassDefinition className: className.
  self objectClipboard: def.
  def theClass removeFromSystem.
  listElement topez commitTransaction.
  ^ STON
    toString:
      {#'addToClipboard:'.
      (def label)}