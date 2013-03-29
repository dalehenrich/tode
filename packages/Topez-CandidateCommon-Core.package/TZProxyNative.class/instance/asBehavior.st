conversion
asBehavior
    self native isBehavior
        ifTrue: [ ^ self native ].
    ^ self native class