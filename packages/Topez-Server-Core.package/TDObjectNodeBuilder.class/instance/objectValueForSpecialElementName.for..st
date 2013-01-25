as yet unclassified
objectValueForSpecialElementName: elementName for: anObject
  elementName = '(oop)'
    ifTrue: [ ^ anObject asOop ].
  elementName = '(class)'
    ifTrue: [ ^ anObject class ].
  elementName = '(value)'
    ifTrue: [ ^ anObject asString ].
  ^ nil