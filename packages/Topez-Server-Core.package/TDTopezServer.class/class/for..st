accessing
for: anId
  | instanceMap instance |
  instanceMap := self instanceMap.
  instance := instanceMap at: anId ifAbsent: [ instanceMap at: anId put: self new ].
  ^ instance