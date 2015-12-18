util
isTrueLeaf: aQuad

	aQuad isNil ifTrue: [ ^ false ].

	aQuad leaf ifTrue: [ ^ aQuad nodes allSatisfy: [ :e | e isNil ] ]
				ifFalse: [ ^ aQuad nodes anySatisfy: [ :e | self isTrueLeaf: e ] ]