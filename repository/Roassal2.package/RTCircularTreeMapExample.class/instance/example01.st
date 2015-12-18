sources
example01

| b inst |
	b := RTCircularTreeMapBuilder new.
	b shape
		color: Color transparent.
	inst := nil.
	b
		baseradius: 200;
		weight: #tally.
	b explore: (MessageTally new
		spyEvery: 1
		on: [ inst := Object browse]; yourself)
		using: #children.
	inst close.
	
	b build.
	^ b view