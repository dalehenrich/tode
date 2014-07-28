printing
printInstanceCreationOn: aStream
  aStream
    nextPutAll: '^ ' , self class name asString , ' new';
    cr;
    space: 4;
    nextPutAll: 'projectName: ' , self projectName printString;
    cr;
    yourself