identifier testing
resolve: aString
    | sym |
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
    (instanceVariables includes: aString)
        ifTrue: [ ^ #'instVar' ].
    workspace
        ifNotNil: [ 
            (workspace hasBindingOf: aString)
                ifTrue: [ ^ #'workspaceVar' ] ].
    classOrMetaClass notNil
        ifTrue: [ 
            (classOrMetaClass bindingOfClassPool: aString) ifNotNil: [ ^ #'classVar' ].
            (classOrMetaClass bindingOfSharedPool: aString) ifNotNil: [ ^ #'poolConstant' ].
            (classOrMetaClass bindingOfGlobal: aString) ifNotNil: [ ^ #'globalVar' ] ]
        ifFalse: [ (environment bindingOfGlobal: aString asSymbol) ifNotNil: [ ^ #'globalVar' ] ].
    ^ #'undefinedIdentifier'