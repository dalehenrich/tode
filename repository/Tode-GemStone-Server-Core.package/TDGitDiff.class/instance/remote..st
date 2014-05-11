accessing
remote: aString
  (aString beginsWith: 'fatal')
    ifTrue: [ self halt ].
  remote := aString