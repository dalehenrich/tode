*topez-server-core
respondsTo: aSelector
  "Returns true if the receiver's class has a method with the given selector
 and false if not."

  | sym |
  sym := Symbol _existingWithAll: aSelector.
  sym ifNil: [ ^ false ].
  ^ self class includesSelector: aSelector