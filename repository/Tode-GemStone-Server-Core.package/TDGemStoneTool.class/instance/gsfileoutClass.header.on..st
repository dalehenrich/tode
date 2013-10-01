as yet unclassified
gsfileoutClass: aClass header: aHeaderString on: aStream
  aHeaderString isEmpty
    ifFalse: [ aStream nextPutAll: aHeaderString ].
  aClass fileOutClassOn: aStream.
  (aClass class selectors includes: #'initialize')
    ifFalse: [ ^ self ].
  aStream
    nextPutAll: 'doit';
    lf;
    nextPutAll: aClass name asString , ' initialize.';
    lf;
    nextPutAll: '%'