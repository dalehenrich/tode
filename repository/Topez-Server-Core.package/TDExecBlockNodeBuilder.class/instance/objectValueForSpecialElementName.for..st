accessing
objectValueForSpecialElementName: elementName for: anObject
  elementName = '(source)'
    ifTrue: [ ^ anObject blockSource ].
  elementName = '(argsAndTemps)'
    ifTrue: [ ^ anObject argAndTempNames ].
  elementName = '(receiver)'
    ifTrue: [ ^ anObject receiver ].
  elementName = '(vcTempNames)'
    ifTrue: [ ^ anObject perform: #'vcTempNames' ].
  ^ super objectValueForSpecialElementName: elementName for: anObject