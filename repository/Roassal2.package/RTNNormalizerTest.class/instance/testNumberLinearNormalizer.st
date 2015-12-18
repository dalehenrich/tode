linear
testNumberLinearNormalizer
	| normalizer |
	normalizer := RTNumberLinearNormalizer inContext: (1 to: 10) withCommand: [:entity | entity * 1000 ].
	self assert: (normalizer rtValue: 100) = 10.
	
	normalizer := RTNumberLinearNormalizer inContext: (1 to: 100) withCommand: [:entity | entity * 1000 ].
	self assert: (normalizer rtValue: 100) = 1.
	
	normalizer := RTNumberLinearNormalizer inContext: (1 to: 100) withCommand: [:entity | entity ].
	self assert: (normalizer rtValue: 100) = 1.
