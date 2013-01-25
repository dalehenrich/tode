as yet unclassified
objectValueForSpecialElementName: elementName for: anObject
  elementName = '(hex)'
    ifTrue: [ ^ '16r' , anObject asHexString ].
  ^ super objectValueForSpecialElementName: elementName for: anObject