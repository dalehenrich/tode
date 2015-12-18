tests - normalizer
testNormalizer

	b := RTMondrian new.
	b nodes: #(1 2 3).
	b normalizer
		normalizeSize: #yourself min: 5 max: 30.
	b build.
	
	self assert: b view elements first trachelShape width equals: 5.
	self assert: b view elements second trachelShape width equals: 17.0.
	self assert: b view elements third trachelShape width equals: 30.