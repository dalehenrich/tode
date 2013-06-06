accessing
for: anId
  | instanceMap instance |
  instanceMap := self concreteClass instanceMap.
  instance := instanceMap
    at: anId
    ifAbsent: [ instanceMap at: anId put: self concreteClass new ].
  ^ instance