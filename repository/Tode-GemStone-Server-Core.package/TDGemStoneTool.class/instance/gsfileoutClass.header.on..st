fileout
gsfileoutClass: clsName header: header on: aStream
  | cls |
  header isEmpty
    ifFalse: [ aStream nextPutAll: header ].
  cls := Smalltalk classNamed: clsName.
  self gsfileoutClass: cls on: aStream.
  cls := Smalltalk classNamed: clsName.
  self gsfileOutMethods: cls on: aStream.
  aStream
    nextPutAll: '! ------------------- Class initializers ';
    lf.
  (cls class selectors includes: #'initialize')
    ifFalse: [ ^ self ].
  aStream
    lf;
    nextPutAll: 'expectvalue %Boolean';
    lf;
    nextPutAll: 'doit';
    lf;
    nextPutAll: cls name asString , ' initialize.';
    lf;
    nextPutAll: 'true';
    lf;
    nextPutAll: '%';
    lf