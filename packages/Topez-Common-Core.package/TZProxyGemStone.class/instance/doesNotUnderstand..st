proxy messages
doesNotUnderstand: aMessage
    | sel clientKeys |
    sel := aMessage selector.
    (self named keys includes: sel)
        ifTrue: [ ^ self named at: sel ].
    clientKeys := self client keys.
    (clientKeys includes: sel)
        ifTrue: [ ^ self client at: sel ].
    clientKeys
        do: [ :each | 
            each asMutator == sel
                ifTrue: [ ^ self client at: each put: aMessage arguments first ] ].
    ^ super doesNotUnderstand: aMessage