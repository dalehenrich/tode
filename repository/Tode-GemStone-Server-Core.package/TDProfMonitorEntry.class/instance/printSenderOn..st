as yet unclassified
printSenderOn: aStream
  | tallyPct totalPct methodMs elapsedPct tallyField |
  tallyPct := self tally asFloat * 100.0 / self overallTotalSamples.
  totalPct := self total asFloat * 100.0 / self overallTotalSamples.
  methodMs := self methodTotalMs.
  elapsedPct := self tally * self overallElapsedTime * 100.0
    / self overallTotalSamples / methodMs.
  self profMon sortKey = 'tally'
    ifTrue: [ tallyField := self tally ]
    ifFalse: [ tallyField := self total ].
  aStream
    nextPutAll: (tallyField asString width: -4);
    nextPutAll: ' ';
    nextPutAll: (tallyPct asStringUsingFormat: #(-6 2 false));
    nextPutAll: ' ';
    nextPutAll: (totalPct asStringUsingFormat: #(-6 2 false));
    nextPutAll: ' ';
    nextPutAll: (methodMs asStringUsingFormat: #(-6 1 false));
    nextPutAll: ' ';
    nextPutAll: (elapsedPct asStringUsingFormat: #(-6 1 false));
    nextPutAll: ' ';
    nextPutAll: (self profMonEntry asStringWidth: 12)