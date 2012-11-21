accessing
performTransformOn: anOoptype
    self transform key == #'ston'
        ifTrue: [ 
            | stonString |
            [ 
            stonString := self session
                receiverNB: self topez topezServerProxy
                perform: 'toString:level:'
                withArgs:
                    {anOoptype.
                    (self transform value)} ]
                on: GsRuntimeError
                do: [ :ex | 
                    "internal error"
                    self halt ].
            ^ (self topez readerClass on: stonString readStream) next ].
    self transform key == #'native'
        ifTrue: [ ^ self session library localFor: anOoptype ].
    ^ anOoptype	"self transform key == #'raw'"