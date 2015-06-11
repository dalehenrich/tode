as yet unclassified
printParentChildSpacerOn: aStream
  self fullEntryReport
    ifTrue: [ aStream nextPutAll: '                        ' ]
    ifFalse: [ aStream nextPutAll: '            ' ]