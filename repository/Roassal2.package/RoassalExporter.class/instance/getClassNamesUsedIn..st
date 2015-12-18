export
getClassNamesUsedIn: aMethodReference 
	"Answers the names of those of our classes that are referenced
	an extension method"
	(self classes includes: aMethodReference realClass theNonMetaClass)
		ifTrue: ["Not an extension method"
			^ #()].
	^ (aMethodReference literals
		select: [:lit | lit class == GlobalVariable
				and: [lit value isBehavior
						and: [lit key == lit value name
								and: [self mustBeQualified: lit value]]]])
		collect: [:lit | lit key]