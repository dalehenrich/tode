menu actions
copyObjectMenuAction: listElement selectionIndex: selectionIndex
  | itemAttribute def |
  itemAttribute := listElement itemCache at: selectionIndex.
  def := itemAttribute object.
  self objectClipboard: def.
  listElement topez commitTransaction.
  ^ STON
    toString:
      {#'addToClipboard:'.
      (def label)}