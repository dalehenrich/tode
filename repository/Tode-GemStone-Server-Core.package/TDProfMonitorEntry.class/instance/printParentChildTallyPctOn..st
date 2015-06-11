as yet unclassified
printParentChildTallyPctOn: aStream
  master total = 0
    ifTrue: [ aStream nextPutAll: (0.0 asStringUsingFormat: #(-5 1 false)) ]
    ifFalse: [ 
      aStream
        nextPutAll:
          (self total * 100.0 / master total asStringUsingFormat: #(-5 1 false)) ].
  aStream nextPutAll: ' '