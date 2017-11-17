private
installInteractionGenerator
	| stream  |
	(stream := WriteStream on: String new)
		nextPutAll: '| class |';
		cr;
		nextPutAll: 'class := ' , TDMinimalClientInteractionGenerator gsClassDefinition;
		cr;
		nextPutAll: 'UserGlobals at: #TD_MINIMAL_CLIENT_INTERACTION_GENERATOR_CLASS put: class.';
		cr;
		yourself.
	self client session executeString: stream contents.
	TDMinimalClientInteractionGenerator
		selectorsDo: [ :each | 
			| source result |
			stream := WriteStream on: String new.
			source := TDMinimalClientInteractionGenerator sourceCodeAt: each.
			stream
				nextPutAll: '| source result symbolList |';
				cr;
				nextPutAll: 'symbolList := System myUserProfile symbolList.';
				cr;
				nextPutAll: 'source := '.
			source string printOn: stream.
			stream
				nextPutAll: '.';
				cr;
				nextPutAll: '[result := TD_MINIMAL_CLIENT_INTERACTION_GENERATOR_CLASS';
				cr;
				tab;
				nextPutAll: 'compileMethod: source';
				cr;
				tab;
				nextPutAll: 'dictionaries: symbolList';
				cr;
				tab;
				nextPutAll: 'category: ''category''] on: Warning do: [:ex | ex resume ].';
				cr;
				nextPutAll: 'result ~~ nil ifTrue: [ ^GsNMethod _sourceWithErrors: result fromString: source ].';
				cr;
				yourself.
			result := self client session executeString: stream contents.
			result ~~ nil
				ifTrue: [ result
						halt: 'Compile error for TDMinimalClientInteractionGenerator>>' , each printString ] ].
	stream := WriteStream on: String new.
	stream
		nextPutAll: '| server  |';
		cr;
		nextPutAll: 'server := TD_MINIMAL_CLIENT_INTERACTION_GENERATOR_CLASS new.';
		cr;
		nextPutAll: 'System _sessionStateAt: 3 put: server.';
		cr;
		nextPutAll: 'UserGlobals removeKey: #TD_MINIMAL_CLIENT_INTERACTION_GENERATOR_CLASS.';
		cr;
		nextPutAll: 'server.';
		cr;
		yourself.
	generatorOopType := self client session executeString: stream contents.
	generatorOopType isNil
		ifTrue: [ stream contents halt ].
	^ generatorOopType