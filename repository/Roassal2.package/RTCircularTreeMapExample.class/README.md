RTCircularTreeMapExample new installTitle: '02' 
		code:
		'
| b inst |
	b := RTCircularTreeMapBuilder new.
	b shape
		color: Color transparent;
		borderWidth: 1.
	inst := nil.
	b
		baseradius: 200;
		weight: #tally.
	b explore: (MessageTally new
		spyEvery: 1
		on: [ inst := Nautilus open]; yourself)
		using: #children.
	inst close.
	
	b build.
	^ b view'
	