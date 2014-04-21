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
    cr.
  self options isEmpty
    ifFalse: [ 
      aStream
        nextPutAll: 'OPTIONS' asText allBold;
        cr;
        nextPutAll: '  ';
        nextPutAll: self options;
        cr;
        cr ].
  self examples isEmpty
    ifFalse: [ 
      aStream
        nextPutAll: 'EXAMPLES' asText allBold;
        cr;
        nextPutAll: '  ';
        nextPutAll: self examples;
        cr;
        cr;
        nextPutAll:
            (Text
                string:
                  '  NOTE - use the `tode it` menu item to run the examples directly.'
                attribute: TextEmphasis italic);
        cr ].
  self seeAlso isEmpty
    ifFalse: [ 
      aStream
        nextPutAll: 'SEE ALSO' asText allBold;
        cr;
        nextPutAll: '  ';
        nextPutAll: self seeAlso;
        cr;
        cr;
        nextPutAll:
            (Text
                string:
                  '  NOTE - use the `tode it` menu item to run commands directly.'
                attribute: TextEmphasis italic);
        cr ].
  ^ aStream contents