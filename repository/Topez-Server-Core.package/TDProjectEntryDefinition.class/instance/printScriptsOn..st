printing
printScriptsOn: aStream
  self installScript isEmpty
    ifFalse: [ 
      aStream
        space: 4;
        nextPutAll: 'installScript: ' , self installScript printString , ';';
        cr;
        yourself ]