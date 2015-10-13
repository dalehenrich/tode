as yet unclassified
printOn: aStream
  aStream
    nextPutAll: self labelString;
    space;
    nextPutAll: self filePath.
  self resolved
    ifTrue: [ aStream nextPutAll: ' (' , self selection asString , ')' ].
  self hasTag
    ifTrue: [ aStream nextPutAll: ' [' , self tag , ']' ]