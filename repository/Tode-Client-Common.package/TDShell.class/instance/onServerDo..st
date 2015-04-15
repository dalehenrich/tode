server blocks
onServerDo: aBlock
	| blockAst outerContext variableBindings blockScopes blockScope serverSource stonString |
	aBlock numArgs > 0
		ifTrue: [ self error: 'only zeroArg blocks may be executed on the server' ].
	outerContext := aBlock outerContext.
	outerContext hasInstVarRef
		ifTrue: [ self error: 'cannot reference instance variables in server block' ].
	blockAst := aBlock sourceNode.
	blockScopes := (OCScopesCollector new visitNode: blockAst) scopes.
	blockScope := blockScopes at: 1.
	variableBindings := Dictionary new.
	blockScope copiedVars
		do: [ :tempVar | 
			| val tempName index |
			tempVar isStoringTempVector
				ifTrue: [ 
					tempVar tempVectorForTempStoringIt
						do: [ :tempVectorVars | 
							
							tempName := tempVectorVars name.
							index := aBlock asContext tempNames indexOf: tempName.
							index > 0
								ifTrue: [ 
									val := aBlock asContext namedTempAt: index.
									variableBindings at: tempName put: val ] ] ]
				ifFalse: [ 
					tempName := tempVar name.
					index := outerContext tempNames indexOf: tempName.
					index > 0
						ifTrue: [ 
							val := outerContext namedTempAt: index.
							variableBindings at: tempName put: val ] ] ].
	serverSource := aBlock sourceNode body formattedCode.
	stonString := self evaluateSTONSmalltalk: serverSource variableBindings: variableBindings.
	^ STON fromString: stonString