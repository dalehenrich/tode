menu actions
cutObjectMenuAction: listElement selectionIndex: selectionIndex
  | itemAttribute def |
  itemAttribute := listElement itemCache at: selectionIndex.
  def := itemAttribute object.
  self objectClipboard: def.
  def theClass removeFromSystem.
  listElement topez commitTransaction.
  ^ STON
    toString:
      {#'refreshList'.
      nil.
      #'addToClipboard:'.
      (def label)}