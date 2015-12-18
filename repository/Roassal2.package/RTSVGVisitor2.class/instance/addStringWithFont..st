as yet unclassified
addStringWithFont: aLabel
	| converter fn |
	converter := RTSVGStringConverter new.
	fn := aLabel fontName.
	fn = 'Source Sans Pro' ifTrue: [ fn := 'Verdana, Geneva, sans-serif' ].
	stream nextPutAll: ' text: "';
		nextPutAll: (converter convertString: aLabel text);
		nextPutAll: '", font: {n: "';
		nextPutAll: fn;
		nextPutAll: '", s: ', aLabel fontSize asString;
		nextPutAll: '},'