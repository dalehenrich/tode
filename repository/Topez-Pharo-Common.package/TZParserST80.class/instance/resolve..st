identifier testing
resolve: aString
	(#('self' 'super' 'true' 'false' 'nil' 'thisContext') includes: aString)
		ifTrue: [ ^ aString asSymbol ].
	(self isBlockTempName: aString)
		ifTrue: [ ^ #blockTempVar ].
	(self isBlockArgName: aString)
		ifTrue: [ ^ #blockArg ].
	(self isMethodTempName: aString)
		ifTrue: [ ^ #tempVar ].
	(self isMethodArgName: aString)
		ifTrue: [ ^ #methodArg ].
	(self isInstVarName: aString)
		ifTrue: [ ^ #instVar ].
	workspace
		ifNotNil: [ 
			(workspace hasBindingOf: aString)
				ifTrue: [ ^ #workspaceVar ] ].
	classOrMetaClass notNil
		ifTrue: [ 
			(classOrMetaClass bindingOfClassPool: aString)
				ifTrue: [ ^ #classVar ].
			(classOrMetaClass bindingOfSharedPool: aString)
				ifTrue: [ ^ #poolConstant ].
			(classOrMetaClass bindingOfGlobal: aString)
				ifTrue: [ ^ #globalVar ] ]
		ifFalse: [ 
			(environment bindingOfGlobal: aString asSymbol)
				ifTrue: [ ^ #globalVar ] ].
	^ #undefinedIdentifier