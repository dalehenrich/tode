as yet unclassified
sourceMethod: aString
  aString
    ifNil: [ 
      sourceMethod := nil.
      ^ self ].
  sourceMethod := 'browse method --spec `' , aString , '`'