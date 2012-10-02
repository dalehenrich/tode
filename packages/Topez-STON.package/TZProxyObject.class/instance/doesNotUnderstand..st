proxy messages
doesNotUnderstand: aMessage
    | sel |
    sel := aMessage selector asString.
    (self named keys includes: sel)
        ifTrue: [ ^ self named at: sel ].
    ^ super doesNotUnderstand: aMessage