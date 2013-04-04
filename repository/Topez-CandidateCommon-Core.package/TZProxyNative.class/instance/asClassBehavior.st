conversion
asClassBehavior
    self native isBehavior
        ifTrue: [ ^ self native class ].
    ^ self native class class