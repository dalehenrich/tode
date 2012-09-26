Public
initializeServer
	"For development purposes, we'll do a roundtrip per method, so that we can get meaningful compile errors from GemStone. Once development is done a single string is sufficient."
	| stream |
	([server := self executeString: 'JadeServer current'] on: Error do: [:ex | ex return: nil ]) ~~ nil 
		ifTrue: [ ^self ].
	(stream := WriteStream on: String new)
		nextPutAll: '| class |'; cr;
		nextPutAll: 'class := ', JadeServer gsClassDefinition; cr;
		nextPutAll: 'UserGlobals at: #GS_JADE_SERVER_CLASS put: class.'; cr;
		yourself.
	self executeString: stream contents.
	JadeServer selectorsDo: [:each | 
		| source result  |
		stream := WriteStream on: String new.
		source := JadeServer sourceCodeAt: each.
		stream nextPutAll: '| source result symbolList |'; cr;
			nextPutAll: 'symbolList := System myUserProfile symbolList.'; cr;
			nextPutAll: 'source := '.
		source string printOn: stream.
		stream
			nextPutAll: '.'; cr;
			nextPutAll: '[result := GS_JADE_SERVER_CLASS'; cr;
			tab; nextPutAll: 'compileMethod: source'; cr;
			tab; nextPutAll: 'dictionaries: symbolList'; cr;
			tab; nextPutAll: 'category: ''category''] on: Warning do: [:ex | ex resume ].'; cr;
			nextPutAll: 'result ~~ nil ifTrue: [ ^GsMethod _sourceWithErrors: result fromString: source ].'; cr;
			yourself.
		result := self executeString: stream contents.
		result ~~ nil ifTrue: [ result halt: 'Compile error for JadeServer>>', each printString ].
	].
	stream := WriteStream on: String new.
	stream 
		nextPutAll: '| server  |'; cr;
		nextPutAll: 'server := GS_JADE_SERVER_CLASS new.'; cr;
		nextPutAll: 'System _sessionStateAt: 3 put: server.'; cr;
		nextPutAll: 'UserGlobals removeKey: #GS_JADE_SERVER_CLASS.'; cr;
		nextPutAll: 'server.'; cr;
		yourself.
	server := self executeString: stream contents.
	server isNil ifTrue: [stream contents halt].
	