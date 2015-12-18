linear
testValueLinearNormalizer

	| normalizer |
	normalizer := RTValueLinearNormalizer inContext: (0 to: 10) withCommand: [:entity | entity ].
	self assert: (normalizer rtValue: 10) = 1.
	
	normalizer := RTValueLinearNormalizer inContext: (0 to: 10) withCommand: [:entity | entity * 1000 ].
	self assert: (normalizer rtValue: 100) = 10.
	
	normalizer := RTValueLinearNormalizer inContext: (99 to: 100) withCommand: [:entity | entity ].
	self assert: (normalizer rtValue: 101) = 2.