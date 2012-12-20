as yet unclassified
elementBehaviorForShout
    self inClassOop ifNil: [ ^ nil ].
    ^ TZGemStoneProxyBehavior new
        behaviorOop: self inClassOop;
        topez: self topez;
        yourself