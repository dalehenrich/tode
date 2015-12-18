visitor
visitMultiCompositeShape: aShape
	stream nextPutAll: '
		{id: "';
		nextPutAll: (self nameFor: aShape);
		nextPutAll: '", type:"multi", shapes:['.
	aShape shapes do: [ :s| s accept: self].
	stream nextPutAll: '], offsets: ['.
	aShape offsets do: [ :o | 
		stream nextPutAll: ('{x: <1p>, y: <2p>},' 
			expandMacrosWith: o x with: o y) ].
	
	stream nextPutAll: ']'.

	(aShape element isNil not and: [aShape element shape isKindOf: RTMultiColoredLine]) ifTrue: [ 
		stream nextPutAll: ', ap: ', aShape element shape attachPoint class name ].
	stream nextPutAll: '},'.