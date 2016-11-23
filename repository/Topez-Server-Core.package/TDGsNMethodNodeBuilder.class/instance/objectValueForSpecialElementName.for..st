accessing
objectValueForSpecialElementName: elementName for: anObject
  elementName = '(source)'
    ifTrue: [ ^ anObject sourceString ].
  elementName = '(selector)'
    ifTrue: [ ^ anObject selector ].
  elementName = '(pragmas)'
    ifTrue: [ ^ anObject pragmas ].
  elementName = '(homeMethod)'
    ifTrue: [ ^ anObject homeMethod ].
  ^ super objectValueForSpecialElementName: elementName for: anObject