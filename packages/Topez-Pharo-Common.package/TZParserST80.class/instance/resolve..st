identifier testing
resolve: aString
    (#('self' 'super' 'true' 'false' 'nil' 'thisContext') includes: aString)
        ifTrue: [ ^ aString asSymbol ].
    (self isBlockTempName: aString)
        ifTrue: [ ^ #'blockTempVar' ].
    (self isBlockArgName: aString)
        ifTrue: [ ^ #'blockArg' ].
    (self isMethodTempName: aString)
        ifTrue: [ ^ #'tempVar' ].
    (self isMethodArgName: aString)
        ifTrue: [ ^ #'methodArg' ].
    ^ #'instVar'