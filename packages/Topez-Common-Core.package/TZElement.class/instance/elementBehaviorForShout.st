accessing
elementBehaviorForShout
  elementBehaviorForShout ifNil: [ elementBehaviorForShout := elementClass asTopezProxy asBehavior ].
  ^ elementBehaviorForShout