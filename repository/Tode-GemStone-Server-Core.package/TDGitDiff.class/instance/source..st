accessing
source: aString
  (aString beginsWith: 'fatal')
    ifTrue: [ self halt ].
  source := aString