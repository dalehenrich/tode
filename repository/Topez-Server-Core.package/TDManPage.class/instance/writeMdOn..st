as yet unclassified
writeMdOn: aStream
  | lf lflf |
  lf := String lf.
  lflf := lf , lf.
  aStream
    nextPutAll: '##NAME';
    lf;
    nextPutAll: '  ';
    nextPutAll: (self summary copyReplaceAll: String lf with: lflf);
    lf;
    lf;
    nextPutAll: '##SYNOPSIS';
    lf;
    nextPutAll: '  ';
    nextPutAll: (self synopsis copyReplaceAll: String lf with: lflf);
    lf;
    lf;
    nextPutAll: '##DESCRIPTION';
    lf;
    nextPutAll: '  ';
    nextPutAll: (self description copyReplaceAll: String lf with: lflf);
    lf;
    lf.
  self options isEmpty
    ifFalse: [ 
      aStream
        nextPutAll: '##OPTIONS';
        lf;
        nextPutAll: '  ';
        nextPutAll: (self options copyReplaceAll: String lf with: lflf);
        lf;
        lf ].
  self examples isEmpty
    ifFalse: [ 
      aStream
        nextPutAll: '##EXAMPLES';
        lf;
        nextPutAll: '  ';
        nextPutAll: (self examples copyReplaceAll: String lf with: lflf);
        lf;
        lf ].
  aStream
    nextPutAll: '##SEE ALSO';
    lf;
    nextPutAll: '  ';
    nextPutAll: self commandPath;
    lf;
    nextPutAll: '  ';
    nextPutAll: self sourceMethod;
    lf