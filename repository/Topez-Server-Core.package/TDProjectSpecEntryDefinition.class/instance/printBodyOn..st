printing
printBodyOn: aStream
  super printBodyOn: aStream.
  aStream
    space: 4;
    nextPutAll: 'locked: ' , self isLocked printString , ';';
    cr;
    yourself