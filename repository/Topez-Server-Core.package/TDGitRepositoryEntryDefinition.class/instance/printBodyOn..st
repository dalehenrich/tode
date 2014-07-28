printing
printBodyOn: aStream
  super printBodyOn: aStream.
  aStream
    space: 4;
    nextPutAll:
        'gitRepoDirectoryPath: ' , self gitRepoDirectoryPath printString , ';';
    cr;
    yourself