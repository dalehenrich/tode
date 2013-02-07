accessing
cmdNPressed: aSmalltalkEditor
  aSmalltalkEditor lineSelectAndEmptyCheck: [ ^ self ].
  ^ self clientElement cmdKeyPressed: $n selectionInterval: aSmalltalkEditor selectionInterval