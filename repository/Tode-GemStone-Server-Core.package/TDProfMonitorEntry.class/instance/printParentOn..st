as yet unclassified
printParentOn: aStream
  | methodMs pMap pt elapsedTime totalSamples |
  totalSamples := self overallTotalSamples.
  elapsedTime := self overallElapsedTime.
  methodMs := self master total * elapsedTime asFloat / totalSamples.
  pMap := self master parentTallies.
  pt := pMap at: self profMonEntry otherwise: 0.
  self printParentChildSpacerOn: aStream.
  self fullEntryReport
    ifTrue: [ 
      aStream
        nextPutAll:
            (pt * elapsedTime asFloat / totalSamples asStringUsingFormat: #(-10 1 false));
        nextPutAll: ' ';
        nextPutAll:
            (pt * elapsedTime * 100.0 / totalSamples / methodMs
                asStringUsingFormat: #(-5 1 false)) ]
    ifFalse: [ self printParentChildTallyPctOn: aStream ].
  aStream
    nextPutAll: '    ';
    nextPutAll: (self profMonEntry asStringWidth: 12)