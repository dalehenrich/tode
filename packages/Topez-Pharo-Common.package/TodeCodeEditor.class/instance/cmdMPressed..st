accessing
cmdMPressed: aSmalltalkEditor
  aSmalltalkEditor lineSelectAndEmptyCheck: [ ^ self ].
  ^ self clientElement cmdKeyPressed: $m selectionInterval: aSmalltalkEditor selectionInterval