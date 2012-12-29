as yet unclassified
elementBehaviorForShout
  "class oop should not be save ... maybe proxy code should use class name instead"

  self inClassOop ifNil: [ ^ nil ].
  ^ TZGemStoneProxyBehavior new
    behaviorOop: self inClassOop;
    topez: self topez;
    yourself