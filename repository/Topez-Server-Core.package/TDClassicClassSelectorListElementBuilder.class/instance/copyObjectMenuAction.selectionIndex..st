menu actions
copyObjectMenuAction: listElement selectionIndex: selectionIndex
  | itemAttribute def |
  selectionIndex == 0
    ifTrue: [ ^ false ].
  itemAttribute := listElement itemCache at: selectionIndex.
  def := itemAttribute object.
  self objectClipboard: def.
  ^ listElement objectSerializer
    toString:
      {#'addToClipboard:'.
      (def label)}