accessing
for: anId
  | instanceMap instance concreteClass |
  concreteClass := self concreteClass ifNil: [ self ].
  (concreteClass respondsTo: #'instanceMap') not
    ifTrue: [ "this can happen during initial install and is cool..."
      ^ nil ].
  instanceMap := concreteClass instanceMap.
  instance := instanceMap
    at: anId
    ifAbsent: [ instanceMap at: anId put: concreteClass new ].
  ^ instance