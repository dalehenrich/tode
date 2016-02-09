as yet unclassified
objectValueForSpecialElementName: elementName for: anObject
  elementName = '(name)'
    ifTrue: [ ^ anObject name ].
  ^ super objectValueForSpecialElementName: elementName for: anObject