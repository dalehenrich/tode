server blocks
exportMethodToServer: clientClass source: source protocol: protocol isMeta: aBool
	| className methodSource methodProtocol isMeta |
	className := clientClass name.
	methodSource := source.
	methodProtocol := protocol.
	isMeta := aBool.
	self
		onServerDo: [ 
			| cls |
			cls := Smalltalk at: className.
			isMeta
				ifTrue: [ cls := cls class ].
			cls compile: methodSource classified: methodProtocol.
			nil ]