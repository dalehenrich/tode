export
mustBeQualified: aClass
	"Answer true if namespace must be qualified with namespace"
	aClass = Color ifTrue: [ ^ true ].
	^(self classes includes: aClass)
		or: [aClass name beginsWith: 'WA']