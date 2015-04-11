server block support
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
		do: [ :copiedVar | 
			(blockScope tempVars includes: copiedVar name) ifTrue: [ 
			| val tempName |
			copiedVar escaping ~~ #escapingRead
				ifTrue: [ self error: 'cannot write to vars outside of server block scope' ].
			tempName := copiedVar name.
			val := outerContext tempNamed: tempName asString.
			variableBindings at: tempName put: val ]].
	serverSource := aBlock sourceNode body formattedCode.
	stonString := self evaluateSTONSmalltalk: serverSource variableBindings: variableBindings.
	^ STON fromString: stonString