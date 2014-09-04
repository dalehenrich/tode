as yet unclassified
objectValueForSpecialElementName: elementName for: anObject
  elementName = '(size)'
    ifTrue: [ 
      ^ [ anObject size ]
        on: Error
        do: [ :ignored | ^ 0 ] ].
  ^ super objectValueForSpecialElementName: elementName for: anObject