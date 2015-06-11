as yet unclassified
printSenderOn: aStream
  | tallyPct totalPct methodMs elapsedPct |
  tallyPct := self tally asFloat * 100.0 / self overallTotalSamples.
  totalPct := self total asFloat * 100.0 / self overallTotalSamples.
  methodMs := self methodTotalMs.
  elapsedPct := self tally * self overallElapsedTime * 100.0
    / self overallTotalSamples / methodMs.
  aStream
    nextPutAll: (self tally asString width: -5);
    nextPutAll: ' ';
    nextPutAll: (self total asString width: -5);
    nextPutAll: ' ';
    nextPutAll: (tallyPct asStringUsingFormat: #(-5 1 false));
    nextPutAll: ' ';
    nextPutAll: (totalPct asStringUsingFormat: #(-5 1 false));
    nextPutAll: ' ';
    nextPutAll: (methodMs asStringUsingFormat: #(-6 1 false));
    nextPutAll: ' ';
    nextPutAll: (elapsedPct asStringUsingFormat: #(-6 1 false));
    nextPutAll: ' ';
    nextPutAll: (self profMonEntry asStringWidth: 12)