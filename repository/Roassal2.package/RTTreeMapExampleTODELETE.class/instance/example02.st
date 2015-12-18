examples
example02
	"
	self new example02
	"
	| b |
	b := RTTreeMapBuilder new.
	b shape 
		if: [ :cls| Smalltalk includesKey: (cls name, 'Test') asSymbol ] fillColor: Color lightGreen;
		if: [ :cls | cls name endsWith: 'Line' ] fillColor: Color purple;
		if: [ :cls | cls hasAbstractMethods ] fillColor: Color red.
	b popup text: [ :cls | cls name, ' number of methods: ', cls numberOfMethods asString ].
	
	b
		extent: 400@400;
		explore: TRShape using: #subclasses;
		weight: [:el | el numberOfMethods == 0 ifTrue: [ 1 ] ifFalse: [ el numberOfMethods ]  ].
	b open.