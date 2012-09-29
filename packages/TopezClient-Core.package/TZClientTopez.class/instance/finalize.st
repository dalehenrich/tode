finalization
finalize
    session ifNil: [ ^ self ].
    session isValid
        ifTrue: [ session logout ].
    session := nil