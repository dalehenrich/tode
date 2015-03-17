as yet unclassified
methodProtocol
  | protocol |
  self theBehavior ifNil: [ ^ '' ].
  protocol := self theBehavior categoryOfSelector: self selector asSymbol.
  protocol ifNil: [ protocol := self defaultProtocol ].
  ^ protocol