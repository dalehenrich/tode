as yet unclassified
objectValueForSpecialElementName: elementName for: anObject
  elementName = '(utf8)'
    ifTrue: [ ^ anObject encodeAsUTF8 ].
  elementName = '(size)'
    ifTrue: [ ^ anObject size ].
  ^ super objectValueForSpecialElementName: elementName for: anObject