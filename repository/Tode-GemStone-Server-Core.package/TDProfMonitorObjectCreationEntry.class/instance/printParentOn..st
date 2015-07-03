as yet unclassified
printParentOn: aStream
  | pMap pt totalSamples |
  totalSamples := self overallTotalSamples.
  pMap := self master parentTallies.
  pt := pMap at: self profMonEntry otherwise: 0.
  self printParentChildSpacerOn: aStream.
  self printParentChildTallyPctOn: aStream.
  aStream
    nextPutAll: '    ';
    nextPutAll: (self profMonEntry asStringWidth: 12)