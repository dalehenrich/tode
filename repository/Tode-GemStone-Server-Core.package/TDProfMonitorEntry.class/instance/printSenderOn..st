as yet unclassified
printSenderOn: aStream
  | tallyPct totalPct methodMs elapsedPct |
  tallyPct := self tally asFloat * 100.0 / self overallTotalSamples.
  totalPct := self total asFloat * 100.0 / self overallTotalSamples.
  methodMs := self methodTotalMs.
  elapsedPct := self tally * self overallElapsedTime * 100.0
    / self overallTotalSamples / methodMs.
  self fullEntryReport
    ifTrue: [ 
      aStream
        nextPutAll: (self tally asString width: -5);
        nextPutAll: ' ';
        nextPutAll: (self total asString width: -5);
        nextPutAll: ' '.
      aStream
        nextPutAll: (tallyPct asStringUsingFormat: #(-5 1 false));
        nextPutAll: ' ';
        nextPutAll: (totalPct asStringUsingFormat: #(-5 1 false));
        nextPutAll: ' ';
        nextPutAll: (methodMs asStringUsingFormat: #(-10 1 false));
        nextPutAll: ' ';
        nextPutAll: (elapsedPct asStringUsingFormat: #(-5 1 false)) ]
    ifFalse: [ 
      aStream
        nextPutAll: (self tally asString width: -10);
        nextPutAll: ' ';
        nextPutAll: (self total asString width: -10);
        nextPutAll: ' '.
      aStream
        nextPutAll:
          (self total asFloat * 100.0 / self overallTotal
            asStringUsingFormat: #(-5 1 false)) ].
  aStream
    nextPutAll: ' ';
    nextPutAll: (self profMonEntry asStringWidth: 12)