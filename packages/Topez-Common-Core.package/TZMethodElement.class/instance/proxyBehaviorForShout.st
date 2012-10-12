accessing
proxyBehaviorForShout
    self isMeta
        ifFalse: [ ^ super proxyBehaviorForShout ].
    ^ proxyClass asTopezProxy asBehavior class