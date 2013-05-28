*topez-server-core
for: anId
  | instanceMap instance |
  instanceMap := self instanceMap.
  instance := instanceMap
    at: anId
    ifAbsent: [ instanceMap at: anId put: self concreteClass new ].
  ^ instance