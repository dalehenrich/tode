as yet unclassified
printOn: aStream
  aStream
    nextPutAll: 'NAME';
    lf;
    nextPutAll: '  ';
    nextPutAll: self summary;
    lf;
    lf;
    nextPutAll: 'SYNOPSIS';
    lf;
    nextPutAll: '  ';
    nextPutAll: self synopsis;
    lf;
    lf;
    nextPutAll: 'DESCRIPTION';
    lf;
    nextPutAll: '  ';
    nextPutAll: self description;
    lf