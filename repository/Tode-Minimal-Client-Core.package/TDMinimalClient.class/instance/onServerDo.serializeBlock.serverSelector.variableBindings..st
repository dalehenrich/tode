server blocks
onServerDo: aBlock serializeBlock: serializeBlock serverSelector: serverSelector variableBindings: variableBindings
	| serverSource  stonString blockAst blockScopes blockScope outerContext blockContext |
	aBlock numArgs > 0
		ifTrue: [ self error: 'only zeroArg blocks may be executed on the server' ].
	outerContext := aBlock outerContext.
	outerContext hasInstVarRef
		ifTrue: [ self error: 'cannot reference instance variables in server block' ].
	blockContext := aBlock asContext.
	blockAst := aBlock sourceNode.
	blockScopes := (OCScopesCollector new visitNode: blockAst) scopes.
	blockScope := blockScopes at: 1.
	blockScope copiedVars
		do: [ :tempVar | 
			| val tempName index |
			tempVar isStoringTempVector
				ifTrue: [ tempVar tempVectorForTempStoringIt
						do: [ :tempVectorVars | 
							tempName := tempVectorVars name.
							index := aBlock asContext tempNames indexOf: tempName.
							index > 0
								ifTrue: [ val := aBlock asContext namedTempAt: index.
									variableBindings at: tempName put: (serializeBlock value: val) ] ] ]
				ifFalse: [ tempName := tempVar name.
					index := outerContext tempNames indexOf: tempName.
					index > 0
						ifTrue: [ val := outerContext namedTempAt: index.
							variableBindings at: tempName put: (serializeBlock value: val) ] ] ].
	serverSource := aBlock sourceNode body formattedCode.
	stonString := self session
		send: serverSelector
		to: todeServerOopType
		withArgs:
			{serverSource.
			(self objectSerializer toString: variableBindings)}.
	^ self objectSerializer fromString: stonString