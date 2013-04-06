as yet unclassified
printOn: aStream
  aStream
    nextPutAll: 'NAME';
    cr;
    nextPutAll: '  ';
    nextPutAll: self summary;
    cr;
    cr;
    nextPutAll: 'SYNOPSIS';
    cr;
    nextPutAll: '  ';
    nextPutAll: self synopsis;
    cr;
    cr;
    nextPutAll: 'DESCRIPTION';
    cr;
    nextPutAll: '  ';
    nextPutAll: self description;
    cr