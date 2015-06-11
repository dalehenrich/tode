as yet unclassified
printSampleOn: aStream sortKey: sortKey
  | tallyPct totalPct tallyField |
  tallyPct := self tally asFloat * 100.0 / self overallTotal.
  totalPct := self total asFloat * 100.0 / self overallTotal.
  sortKey = 'tally'
    ifTrue: [ tallyField := self tally ]
    ifFalse: [ tallyField := self total ].
  aStream
    nextPutAll: (tallyField asString width: -5);
    nextPutAll: ' ';
    nextPutAll: (tallyPct asStringUsingFormat: #(-6 2 false));
    nextPutAll: ' ';
    nextPutAll: (totalPct asStringUsingFormat: #(-6 2 false));
    nextPutAll: ' ';
    nextPutAll: (self methodMs asStringUsingFormat: #(-8 1 false));
    nextPutAll: ' ';
    nextPutAll: (self profMonEntry asStringWidth: 25)