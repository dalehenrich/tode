as yet unclassified
gsfileoutClass: aClass on: aStream
  aStream
    nextPut: Character lf;
    nextPutAll: 'expectvalue %String';
    nextPut: Character lf;
    nextPutAll: 'doit';
    nextPut: Character lf;
    nextPut: $(;
    nextPutAll:
        (aClass _definitionInContext: System myUserProfile withConstraints: false);
    nextPutAll: ') definition.';
    nextPut: Character lf;
    nextPut: $%;
    nextPut: Character lf.
  aClass comment isEmpty not
    ifTrue: [ 
      aStream
        lf;
        nextPutAll: 'expectvalue %Boolean';
        lf;
        nextPutAll: '! ------------------- Class comment for ';
        nextPutAll: aClass name asString;
        lf;
        nextPutAll: 'doit';
        lf;
        nextPutAll: aClass name asString;
        nextPutAll: ' comment: ';
        lf;
        nextPutAll: aClass comment printString;
        nextPut: $.;
        lf;
        nextPutAll: 'true';
        lf;
        nextPut: $%;
        lf ]