printing
printOn: aStream
  self printInstanceCreationOn: aStream.
  self printBodyOn: aStream.
  aStream
    space: 4;
    nextPutAll: 'yourself.';
    cr;
    yourself