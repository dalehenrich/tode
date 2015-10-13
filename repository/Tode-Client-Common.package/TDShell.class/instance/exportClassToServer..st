server blocks
exportClassToServer: clientClass
	| classDefinition className classComment |
	className := clientClass name asString.
	classDefinition := clientClass definition.
	self
		onServerDo: [ 
			classDefinition evaluate.
			nil	"don't try returning a class to client" ].
	classComment := clientClass comment.
	self
		onServerDo: [ 
			(Smalltalk at: className) comment: classComment.
			nil	"don't try returning a class to client" ].
	clientClass
		selectorsDo: [ :selector | 
			self
				exportMethodToServer: clientClass
				source: (clientClass sourceCodeAt: selector)
				protocol: (clientClass organization categoryOfElement: selector)
				isMeta: false ].
	clientClass class
		selectorsDo: [ :selector | 
			self
				exportMethodToServer: clientClass class
				source: (clientClass class sourceCodeAt: selector)
				protocol: (clientClass class organization categoryOfElement: selector)
				isMeta: true ]