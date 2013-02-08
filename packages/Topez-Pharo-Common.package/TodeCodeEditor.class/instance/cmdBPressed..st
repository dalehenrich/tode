accessing
cmdBPressed: aSmalltalkEditor
  aSmalltalkEditor lineSelectAndEmptyCheck: [ ^ self ].
  ^ self clientElement
    cmdKeyPressed: $b
    editorSource: aSmalltalkEditor string
    selectionInterval: aSmalltalkEditor selectionInterval