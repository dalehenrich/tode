accessing
cmdShiftNPressed: aSmalltalkEditor
  aSmalltalkEditor selectLine.
  ^ self clientElement cmdKeyPressed: $N selectionInterval: aSmalltalkEditor selectionInterval