accessing
elementBehaviorForShout
  elementBehaviorForShout
    ifNil: [ 
      self isMeta
        ifFalse: [ ^ super elementBehaviorForShout ].
      elementBehaviorForShout := elementClass asTopezProxy asBehavior class ].
  ^ elementBehaviorForShout