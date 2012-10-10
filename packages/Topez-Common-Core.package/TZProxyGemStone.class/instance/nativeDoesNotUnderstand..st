proxy messages
nativeDoesNotUnderstand: aMessage
    | sel |
    sel := aMessage selector.
    ((self header nativeIn: self topez) respondsTo: sel asSymbol)
        ifTrue: [ ^ aMessage sendTo: (self header nativeIn: self topez) ].
    ^ super nativeDoesNotUnderstand: aMessage