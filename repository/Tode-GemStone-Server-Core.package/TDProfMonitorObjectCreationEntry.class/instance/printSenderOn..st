reporting
printSenderOn: aStream
  | tallyPct totalPct elapsdPct |
  tallyPct := self tally asFloat * 100.0 / self overallTotalSamples.
  totalPct := self total asFloat * 100.0 / self overallTotalSamples.
  aStream nextPut: $=.
  aStream
    nextPutAll: (self tally asString width: -10);
    nextPutAll: ' ';
    nextPutAll: (self total asString width: -10);
    nextPutAll: ' '.
  aStream
    nextPutAll:
      (self total asFloat * 100.0 / self overallTotal
        asStringUsingFormat: #(-6 1 false)).
  aStream
    nextPutAll: ' ';
    nextPutAll: (self profMonEntry asStringWidth: 12)