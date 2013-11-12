as yet unclassified
asText
  | aStream |
  aStream := TextStream on: Text new.
  aStream
    nextPutAll: 'NAME' asText allBold;
    cr;
    nextPutAll: '  ';
    nextPutAll: self summary;
    cr;
    cr;
    nextPutAll: 'SYNOPSIS' asText allBold;
    cr;
    nextPutAll: '  ';
    nextPutAll: self synopsis;
    cr;
    cr;
    nextPutAll: 'DESCRIPTION' asText allBold;
    cr;
    nextPutAll: '  ';
    nextPutAll: self description;
    cr;
    cr;
    nextPutAll: 'EXAMPLES' asText allBold;
    cr;
    nextPutAll: '  ';
    nextPutAll: self examples;
    cr.
  (commandPath notNil or: [ sourceMethod notNil ])
    ifTrue: [ 
      aStream
        cr;
        nextPutAll: 'SEE ALSO' asText allBold;
        cr;
        nextPutAll: '  ';
        nextPutAll: self commandPath;
        cr;
        nextPutAll: '  ';
        nextPutAll: self sourceMethod;
        cr ].
  ^ aStream contents