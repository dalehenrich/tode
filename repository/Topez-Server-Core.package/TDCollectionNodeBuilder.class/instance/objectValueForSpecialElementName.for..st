as yet unclassified
objectValueForSpecialElementName: elementName for: anObject
  elementName = '(size)'
    ifTrue: [ ^ anObject size ].
  ^ super objectValueForSpecialElementName: elementName for: anObject