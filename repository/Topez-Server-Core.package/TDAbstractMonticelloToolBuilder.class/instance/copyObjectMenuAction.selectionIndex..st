actions
copyObjectMenuAction: listElement selectionIndex: selectionIndex
  | def |
  selectionIndex = 0
    ifTrue: [ ^ false ].
  def := self definitionForSelection: (self theList at: selectionIndex).
  self objectClipboard: def.
  self topez commitTransaction.
  ^ self objectSerializer
    toString:
      {#'addToClipboard:'.
      (def label)}