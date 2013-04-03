accessing
cmdMPressed: aSmalltalkEditor
  aSmalltalkEditor lineSelectAndEmptyCheck: [ ^ self ].
  ^ self clientElement
    cmdKeyPressed: $m
    editorSource: aSmalltalkEditor string
    selectionInterval: aSmalltalkEditor selectionInterval