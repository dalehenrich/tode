as yet unclassified
objectValueForSpecialElementName: elementName for: anObject
  elementName = '(bits set)'
    ifTrue: [ 
      ^ [ anObject size ]
        on: Error
        do: [ :ignored | ^ 0 ] ].
  ^ super objectValueForSpecialElementName: elementName for: anObject