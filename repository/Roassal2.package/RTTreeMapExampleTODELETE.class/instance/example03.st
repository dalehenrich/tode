examples
example03
	"
	self new example03
	"
	| b |
	b := RTTreeMapBuilder new.
	b shape 
		if: [ :m| Smalltalk includesKey: (m theClass name,'Test') asSymbol ] fillColor: Color lightGreen;
		if: [ :m| m theClass hasAbstractMethods ] fillColor: Color red.
	
	b
		extent: 400@400;
		weight: [:m | m tally ].
	b explore: (MessageTally new
		spyEvery: 1
		on: [Object browse]; yourself)
		using: #children.
	b elements do: [ :e | e when: TRMouseClick do: [ :evt | e model inspect ] ].
	b open.