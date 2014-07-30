as yet unclassified
objectValueForSpecialElementName: elementName for: anObject
  elementName = '(source)'
    ifTrue: [ ^ anObject _sourceString ].
  ^ super objectValueForSpecialElementName: elementName for: anObject