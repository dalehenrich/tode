menu actions
cutObjectMenuAction: listElement selectionIndex: selectionIndex
  | classAttributes className selector isMeta def |
  def := listElement itemCache at: selectionIndex.
  self objectClipboard: def.
  def removeFromSystem: listElement topez.
  ^ listElement objectSerializer
    toString:
      {#'refreshList'.
      nil.
      #'addToClipboard:'.
      (def label)}