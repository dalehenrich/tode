reporting
printSampleOn: aStream
  | tallyPct |
  tallyPct := self tally asFloat * 100.0 / self overallTotal.
  aStream
    nextPutAll: (self tally asString width: -10);
    nextPutAll: ' ';
    nextPutAll: (tallyPct asStringUsingFormat: #(-6 2 false));
    nextPutAll: ' ';
    nextPutAll: self tallyClassName;
    yourself