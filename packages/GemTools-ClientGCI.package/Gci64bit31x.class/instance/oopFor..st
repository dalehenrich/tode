Wrapper
oopFor: anObject
    | result |
    anObject isNil
        ifTrue: [ ^ self oopNil asOop ].
    (anObject isKindOf: OopType)
        ifTrue: [ ^ anObject asOop ].
    (anObject isKindOf: Integer)
        ifTrue: [ ^ self apiGciI64ToOop: anObject ].
    (anObject isKindOf: ByteString)
        ifTrue: [ ^ self apiGciNewString: anObject ].
    (anObject isKindOf: Boolean)
        ifTrue: [ 
            ^ (anObject
                ifTrue: [ self oopTrue ]
                ifFalse: [ self oopFalse ]) asOop ].
    (anObject isKindOf: Character)
        ifTrue: [ ^ self oopForChar: anObject ].
    (anObject isKindOf: ByteSymbol)
        ifTrue: [ ^ self apiGciNewSymbol: anObject asString ].
    (anObject isKindOf: Float)
        ifTrue: [ ^ (self floatToSmallDouble: anObject) asOop ].
    (anObject isKindOf: WideString)
        ifTrue: [ ^ self oopForWideString: anObject ].
    (anObject isKindOf: WideSymbol)
        ifTrue: [ ^ self oopForWideSymbol: anObject ].
    ^(anObject asOopTypeWith: self oopTypeClass) asOop