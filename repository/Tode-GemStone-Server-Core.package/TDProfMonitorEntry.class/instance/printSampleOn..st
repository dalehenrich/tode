as yet unclassified
printSampleOn: aStream
  | tallyPct totalPct |
  tallyPct := self tally asFloat * 100.0 / self overallTotal.
  totalPct := self total asFloat * 100.0 / self overallTotal.
  aStream
    nextPutAll: (self tally asString width: -4);
    nextPutAll: ' ';
    nextPutAll: (tallyPct asStringUsingFormat: #(-6 2 false));
    nextPutAll: ' (';
    nextPutAll: (totalPct asStringUsingFormat: #(-6 2 false));
    nextPutAll: ') ';
    nextPutAll: (self profMonEntry asStringWidth: 25)