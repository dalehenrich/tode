actions
copyObjectMenuAction: listElement selectionIndex: selectionIndex
  | versionInfo |
  selectionIndex = 0
    ifTrue: [ ^ false ].
  versionInfo := self theList at: selectionIndex.
  ^ STON
    toString:
      {#'addToClipboard:'.
      (versionInfo name)}