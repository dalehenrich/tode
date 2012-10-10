proxy messages
doesNotUnderstand: aMessage
    | sel |
    sel := aMessage selector.
    (self header native respondsTo: sel asSymbol)
        ifTrue: [ ^ aMessage sendTo: self header native ].
    ^ super doesNotUnderstand: aMessage