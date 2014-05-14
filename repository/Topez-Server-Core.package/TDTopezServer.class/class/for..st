accessing
for: anId
  | instanceMap instance |
  (self concreteClass respondsTo: #'instanceMap') not
    ifTrue: [ 
      "this can happen during initial install and is cool..."
      ^ nil ].
  instanceMap := self concreteClass instanceMap.
  instance := instanceMap
    at: anId
    ifAbsent: [ instanceMap at: anId put: self concreteClass new ].
  ^ instance