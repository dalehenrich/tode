private
evaluate: aStringOrStream in: ctxt to: rcvr
    | string |
    string := aStringOrStream isString
        ifTrue: [ aStringOrStream ]
        ifFalse: [ aStringOrStream contents ].
    ^ self executeString: string receiver: rcvr level: self level