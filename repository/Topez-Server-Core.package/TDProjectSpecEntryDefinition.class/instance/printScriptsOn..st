printing
printScriptsOn: aStream
  super printScriptsOn: aStream.
  self preLoadScript isEmpty
    ifFalse: [ 
      aStream
        space: 4;
        nextPutAll: 'preLoadScript: ' , self preLoadScript printString , ';';
        cr;
        yourself ].
  self postLoadScript isEmpty
    ifFalse: [ 
      aStream
        space: 4;
        nextPutAll: 'postLoadScript: ' , self postLoadScript printString , ';';
        cr;
        yourself ]