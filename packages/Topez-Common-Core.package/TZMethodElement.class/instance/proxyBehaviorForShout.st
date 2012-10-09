accessing
proxyBehaviorForShout
    self isMeta
        ifFalse: [ ^ super proxyBehaviorForShout ].
    ^ proxyClass asBehavior class