accessing
cmdKPressed: aSmalltalkEditor
  ^ self clientElement
    cmdKeyPressed: $k
    editorSource: aSmalltalkEditor string
    selectionInterval: aSmalltalkEditor selectionInterval