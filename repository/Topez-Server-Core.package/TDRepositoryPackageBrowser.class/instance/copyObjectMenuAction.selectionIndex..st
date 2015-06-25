actions
copyObjectMenuAction: listElement selectionIndex: selectionIndex
  | packageText |
  selectionIndex = 0
    ifTrue: [ ^ false ].
  packageText := self packageTextList at: selectionIndex.
  ^ STON
    toUTF8EncodedString:
      {#'addToClipboard:'.
      (packageText asString)}