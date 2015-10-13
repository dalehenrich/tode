as yet unclassified
objectValueForSpecialElementName: elementName for: anObject
  elementName = '(utf8)'
    ifTrue: [ ^ anObject encodeAsUTF8 ].
  elementName = '(bytes)'
    ifTrue: [ ^ anObject asByteArray ].
  elementName = '(size)'
    ifTrue: [ ^ anObject size ].
  ^ super objectValueForSpecialElementName: elementName for: anObject