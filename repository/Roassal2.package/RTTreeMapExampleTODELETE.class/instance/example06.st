examples
example06
	"
	self new example06
	"
	| b |
	b := RTTreeMapBuilder new.
	b shape 
		if: [ :m| Smalltalk includesKey: (m theClass name,'Test') asSymbol ] fillColor: Color lightGreen;
		if: [ :m| m theClass hasAbstractMethods ] fillColor: Color red;
		borderWidth: 2.
	
	b
		extent: 400@400;
		weight: [:m | m tally ].
	b explore: (MessageTally new
		spyEvery: 1
		on: [Object browse]; yourself)
		using: #children.
	b withShadedFramesFromColor: Color gray toColor: Color red.
	b elements do: [ :e | e when: TRMouseClick do: [ :evt | e model inspect ] ].
	
	b open.