accessing
elementBehaviorForShout
    self isMeta
        ifFalse: [ ^ super elementBehaviorForShout ].
    ^ elementClass asTopezProxy asBehavior class