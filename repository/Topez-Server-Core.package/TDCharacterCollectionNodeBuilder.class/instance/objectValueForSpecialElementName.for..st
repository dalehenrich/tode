as yet unclassified
objectValueForSpecialElementName: elementName for: anObject
  elementName = '(utf8)'
    ifTrue: [ ^ anObject encodeAsUTF8 ].
  ^ super objectValueForSpecialElementName: elementName for: anObject