as yet unclassified
printSampleOn: aStream
  | tallyPct totalPct sortKey |
  tallyPct := self tally asFloat * 100.0 / self overallTotal.
  totalPct := self total asFloat * 100.0 / self overallTotal.
  sortKey := self profMon sortKey.
  sortKey = 'tally'
    ifTrue: [ 
      aStream
        nextPutAll: (self tally asString width: -5);
        nextPutAll: ' ';
        nextPutAll: (self methodTallyMs asStringUsingFormat: #(-10 1 false));
        nextPutAll: ' ';
        nextPutAll: (tallyPct asStringUsingFormat: #(-6 2 false));
        nextPutAll: ' ' ]
    ifFalse: [ 
      aStream
        nextPutAll: (self total asString width: -5);
        nextPutAll: ' ';
        nextPutAll: (self methodTotalMs asStringUsingFormat: #(-10 1 false));
        nextPutAll: ' ';
        nextPutAll: (totalPct asStringUsingFormat: #(-6 2 false));
        nextPutAll: ' ' ].
  aStream nextPutAll: (self profMonEntry asStringWidth: 25)