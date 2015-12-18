examples
example07
	"
	self new example07
	"
	| b |
	b := RTTreeMapBuilder new.
	b
		extent: 400@400;
		weight: [:m | m tally ];
		explore: (MessageTally new
		spyEvery: 1
		on: [Object browse]; yourself)
		using: #children;
		depthShadedBorder.
	b open.