as yet unclassified
printSampleOn: aStream
  | tallyPct totalPct sortKey |
  sortKey := self profMon sortKey.
  sortKey = 'tally'
    ifTrue: [ 
      tallyPct := self tally asFloat * 100.0 / self overallTotal.
      aStream
        nextPutAll: (self tally asString width: -10);
        nextPutAll: ' ';
        nextPutAll: (tallyPct asStringUsingFormat: #(-6 2 false));
        nextPutAll: ' ' ]
    ifFalse: [ 
      totalPct := self total asFloat * 100.0 / self overallTotal.
      aStream
        nextPutAll: (self total asString width: -10);
        nextPutAll: ' ';
        nextPutAll: (totalPct asStringUsingFormat: #(-5 1 false));
        nextPutAll: ' ' ].
  aStream nextPutAll: (self profMonEntry asStringWidth: 25)