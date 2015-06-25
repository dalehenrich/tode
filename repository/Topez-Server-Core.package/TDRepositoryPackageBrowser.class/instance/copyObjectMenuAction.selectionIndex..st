actions
copyObjectMenuAction: listElement selectionIndex: selectionIndex
  | packageText |
  selectionIndex = 0
    ifTrue: [ ^ false ].
  packageText := self packageTextList at: selectionIndex.
  ^ self objectSerializer
    toString:
      {#'addToClipboard:'.
      (packageText asString)}