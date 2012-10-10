proxy messages
nativeDoesNotUnderstand: aMessage
    | sel |
    sel := aMessage selector.
    ((self header nativeIn: self topezClient) respondsTo: sel asSymbol)
        ifTrue: [ ^ aMessage sendTo: (self header nativeIn: self topezClient) ].
    ^ super nativeDoesNotUnderstand: aMessage