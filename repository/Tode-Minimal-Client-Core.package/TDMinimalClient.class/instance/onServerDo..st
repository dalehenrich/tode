server blocks
onServerDo: aBlock
	| serverSource variableBindings stonString blockAst blockScopes blockScope outerContext blockContext |
	aBlock numArgs > 0
		ifTrue: [ self error: 'only zeroArg blocks may be executed on the server' ].
	outerContext := aBlock outerContext.
	outerContext hasInstVarRef
		ifTrue: [ self error: 'cannot reference instance variables in server block' ].
	blockContext := aBlock asContext.
	blockAst := aBlock sourceNode.
	blockScopes := (OCScopesCollector new visitNode: blockAst) scopes.
	blockScope := blockScopes at: 1.
	variableBindings := Dictionary new.
	blockScope copiedVars
		do: [ :tempVar | 
			| val tempName index |
			tempName := tempVar name.
			index := outerContext tempNames indexOf: tempName.
			index > 0
				ifTrue: [ val := outerContext namedTempAt: index.
					variableBindings at: tempName put: val ] ].
	serverSource := aBlock sourceNode body formattedCode.
	stonString := self session
		send: #evaluateSTONSmalltalk:variableBindings:
		to: todeServerOopType
		withArgs:
			{serverSource.
			(self objectSerializer toString: variableBindings)}.
	^ self objectSerializer fromString: stonString