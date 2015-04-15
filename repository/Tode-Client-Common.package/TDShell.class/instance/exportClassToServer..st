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
	self onServerDo: [ (Smalltalk at: className) comment: classComment ].
	clientClass
		selectorsDo: [ :selector | 
			| methodSource methodProtocol |
			methodSource := clientClass sourceCodeAt: selector.
			methodProtocol := clientClass organizer categoryOfElement: selector.
			self onServerDo: [ (Smalltalk at: className) compile: methodSource in: methodProtocol ] ].
	clientClass class
		selectorsDo: [ :selector | 
			| methodSource methodProtocol |
			methodSource := clientClass sourceCodeAt: selector.
			methodProtocol := clientClass organizer categoryOfElement: selector.
			self onServerDo: [ (Smalltalk at: className) compile: methodSource in: methodProtocol ] ]