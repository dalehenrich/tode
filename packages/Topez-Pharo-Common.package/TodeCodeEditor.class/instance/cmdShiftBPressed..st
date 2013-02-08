accessing
cmdShiftBPressed: aSmalltalkEditor
  ^ self clientElement
    cmdKeyPressed: $B
    editorSource: aSmalltalkEditor string
    selectionInterval: aSmalltalkEditor selectionInterval