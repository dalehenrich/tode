accessing
destination: aString
  (aString beginsWith: 'fatal')
    ifTrue: [ self halt ].
  destination := aString