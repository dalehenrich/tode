printing
printBodyOn: aStream
  super printBodyOn: aStream.
  aStream
    space: 4;
    nextPutAll: 'locked: ' , self isLocked printString , ';';
    cr;
    yourself.
  self installScript isEmpty
    ifFalse: [ 
      aStream
        space: 4;
        nextPutAll: 'installScript: ' , self installScript printString , ';';
        cr;
        yourself ].
  self loadScript isEmpty
    ifFalse: [ 
      aStream
        space: 4;
        nextPutAll: 'loadScript: ' , self loadScript printString , ';';
        cr;
        yourself ]