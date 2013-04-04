as yet unclassified
printOn: aStream
  aStream nextPut: $[.
  aStream
    nextPutAll: 'x: ' , x printString;
    nextPutAll: ' y: ' , y printString;
    nextPutAll: ' z: ' , z printString;
    yourself.
  aStream
    nextPut: $];
    cr;
    nextPut: $(.
  self do: [ :element | aStream nextPutAll: element printString ] separatedBy: [ aStream space ].
  aStream nextPut: $)