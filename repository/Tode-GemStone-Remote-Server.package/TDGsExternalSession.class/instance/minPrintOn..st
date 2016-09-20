public
minPrintOn: aStream
  aStream
    nextPutAll: '--remote <<';
    nextPutAll: stoneSessionId printString;
    nextPutAll: '/';
    nextPutAll: stoneSessionSerial printString;
    nextPutAll: '>>';
    yourself