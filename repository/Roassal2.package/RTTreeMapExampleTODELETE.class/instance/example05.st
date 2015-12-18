examples
example05
	"
	self new example05
	"
	| b normalizer tally methods |
	b := RTTreeMapBuilder new.
	b shape 
		if: [ :m| Smalltalk includesKey: (m theClass name,'Test') asSymbol ] fillColor: Color lightGreen;
		if: [ :m| m theClass hasAbstractMethods ] fillColor: Color red.
	
	tally := (MessageTally new
		spyEvery: 1
		on: [Object browse]; yourself).
	methods := tally withDeepCollect: #children.
	
	normalizer := RTNColorLinearNormalizer inContext: methods withCommand: #tally lowColor: Color gray highColor: Color red.
	b shape borderColor: [ :e |normalizer rtValue: e ];
		borderWidth: 2.
	
	b
		extent: 500@500;
		weight: [:m | m tally ].
	b explore: tally
		using: #children.
	b elements do: [ :e | e when: TRMouseClick do: [ :evt | e model inspect ] ].
	b open.