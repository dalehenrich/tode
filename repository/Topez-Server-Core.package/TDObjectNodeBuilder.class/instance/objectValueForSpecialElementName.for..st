as yet unclassified
objectValueForSpecialElementName: elementName for: anObject
  elementName = '(oop)'
    ifTrue: [ ^ Reflection oopOf: anObject ].
  elementName = '(class)'
    ifTrue: [ ^ Reflection classOf: anObject ].
  elementName = '(value)'
    ifTrue: [ ^ anObject asString ].
  elementName = '(invariant)'
    ifTrue: [ ^ anObject isInvariant ].
  elementName = '(dependents)'
    ifTrue: [ ^ DependencyList for: anObject ].
  ^ nil