as yet unclassified
printParentOn: aStream
  | methodMs pMap pt elapsedTime totalSamples |
  totalSamples := self overallTotalSamples.
  elapsedTime := self overallElapsedTime.
  methodMs := self master total * elapsedTime asFloat / totalSamples.
  pMap := self master parentTallies.
  pt := pMap at: self profMonEntry otherwise: 0.
  aStream
    nextPutAll: '                   ';
    nextPutAll:
        (pt * elapsedTime asFloat / totalSamples asStringUsingFormat: #(-6 1 false));
    nextPutAll: ' ';
    nextPutAll:
        (pt * elapsedTime * 100.0 / totalSamples / methodMs
            asStringUsingFormat: #(-6 1 false));
    nextPutAll: ' ';
    nextPutAll: (self profMonEntry asStringWidth: 12)