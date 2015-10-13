menu actions
copyObjectMenuAction: listElement selectionIndex: selectionIndex
  | def |
  (selectionIndex == 0
    or: [ self isAllProtocolSelected: listElement selection: selectionIndex ])
    ifTrue: [ ^ false ].
  def := listElement itemCache at: selectionIndex.
  self objectClipboard: def.
  ^ listElement objectSerializer
    toString:
      {#'addToClipboard:'.
      (def label)}