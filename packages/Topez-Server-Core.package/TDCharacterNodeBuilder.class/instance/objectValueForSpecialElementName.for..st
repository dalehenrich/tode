as yet unclassified
objectValueForSpecialElementName: elementName for: anObject
  elementName = '(asciiValue)'
    ifTrue: [ ^ anObject asciiValue ].
  ^ super objectValueForSpecialElementName: elementName for: anObject