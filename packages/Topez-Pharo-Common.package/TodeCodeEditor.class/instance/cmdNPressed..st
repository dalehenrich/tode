accessing
cmdNPressed: aSmalltalkEditor
  aSmalltalkEditor lineSelectAndEmptyCheck: [ ^ self ].
  ^ self clientElement
    cmdKeyPressed: $n
    editorSource: aSmalltalkEditor string
    selectionInterval: aSmalltalkEditor selectionInterval