as yet unclassified
printParentChildTallyPctOn: aStream
  aStream
    nextPutAll: (self tally asString width: -10);
    nextPutAll: ' ';
    nextPutAll: (self total asString width: -10);
    nextPutAll: ' '.
  master total = 0
    ifTrue: [ aStream nextPutAll: (0.0 asStringUsingFormat: #(-6 1 false)) ]
    ifFalse: [ 
      aStream
        nextPutAll:
          (self total * 100.0 / master total asStringUsingFormat: #(-6 1 false)) ].
  aStream nextPutAll: ' '