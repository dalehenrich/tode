as yet unclassified
printChildOn: aStream
  | cMap ct totalSamples |
  totalSamples := self overallTotalSamples.
  cMap := self master childTallies.
  ct := cMap at: self profMonEntry otherwise: 0.
  self printParentChildSpacerOn: aStream.
  self printParentChildTallyPctOn: aStream.
  aStream
    nextPutAll: '    ';
    nextPutAll: (self profMonEntry asStringWidth: 12)