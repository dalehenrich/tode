menu actions
copyObjectMenuAction: listElement selectionIndex: selectionIndex
  | itemAttribute className def |
  itemAttribute := listElement itemCache at: selectionIndex.
  className := itemAttribute object.
  def := TDClassDefinition className: className.
  self objectClipboard: def.
  listElement topez commitTransaction.
  ^ STON
    toString:
      {#'addToClipboard:'.
      (def label)}