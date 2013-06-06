accessing
concreteClassName
  ConcreteClassName ifNil: [ ConcreteClassName := self name ].
  ^ ConcreteClassName