as yet unclassified
methodProtocol
  | protocol |
  protocol := self theBehavior categoryOfSelector: self selector asSymbol.
  protocol ifNil: [ protocol := ClassOrganizer default ].
  ^ protocol