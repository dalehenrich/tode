accessing
objectValueForSpecialElementName: elementName for: anObject
  elementName = '(source)'
    ifTrue: [ ^ anObject blockSource ].
  elementName = '(argsAndTemps)'
    ifTrue: [ ^ anObject argAndTempNames ].
  elementName = '(receiver)'
    ifTrue: [ ^ anObject receiver ].
  ^ super objectValueForSpecialElementName: elementName for: anObject