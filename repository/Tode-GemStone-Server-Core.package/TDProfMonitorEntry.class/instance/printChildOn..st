as yet unclassified
printChildOn: aStream
  | methodMs cMap ct elapsedTime totalSamples |
  totalSamples := self overallTotalSamples.
  elapsedTime := self overallElapsedTime.
  methodMs := self master total * elapsedTime asFloat / totalSamples.
  cMap := self master childTallies.
  ct := cMap at: self profMonEntry otherwise: 0.
  aStream
    nextPutAll: '                        ';
    nextPutAll:
        (ct * elapsedTime asFloat / totalSamples asStringUsingFormat: #(-6 1 false));
    nextPutAll: ' ';
    nextPutAll:
        (ct * elapsedTime * 100.0 / totalSamples / methodMs
            asStringUsingFormat: #(-6 1 false));
    nextPutAll: ' ';
    nextPutAll: (self profMonEntry asStringWidth: 12)