accessing
cmdBPressed: aSmalltalkEditor
  aSmalltalkEditor lineSelectAndEmptyCheck: [ ^ self ].
  ^ self clientElement cmdKeyPressed: $b selectionInterval: aSmalltalkEditor selectionInterval