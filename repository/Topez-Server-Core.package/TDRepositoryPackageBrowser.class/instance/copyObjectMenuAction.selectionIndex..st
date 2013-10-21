actions
copyObjectMenuAction: listElement selectionIndex: selectionIndex
  | packageText |
  selectionIndex = 0
    ifTrue: [ ^ false ].
  packageText := self packageTextList at: selectionIndex.
  ^ STON
    toString:
      {#'addToClipboard:'.
      (packageText asString)}