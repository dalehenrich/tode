as yet unclassified
elementBehaviorForShout
  "class oop should not be save ... maybe proxy code should use class name instead"

  self inClassOop ifNil: [ ^ nil ].
  elementBehaviorForShout
    ifNil: [ elementBehaviorForShout := topez proxyBehaviorClass fromClientElement: self ].
  ^ elementBehaviorForShout