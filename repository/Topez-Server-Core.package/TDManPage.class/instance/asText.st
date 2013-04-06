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
    cr.
  ^ aStream contents