accessing
source: aString
  (aString beginsWith: 'fatal')
    ifTrue: [ 
      self inform: 'Error extracting source: ' , aString.
      source := aString ].
  source := aString