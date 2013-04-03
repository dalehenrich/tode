accessing
cmdShiftNPressed: aSmalltalkEditor
  aSmalltalkEditor selectLine.
  ^ self clientElement
    cmdKeyPressed: $N
    editorSource: aSmalltalkEditor string
    selectionInterval: aSmalltalkEditor selectionInterval