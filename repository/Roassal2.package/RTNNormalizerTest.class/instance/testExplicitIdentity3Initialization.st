explicit identity
testExplicitIdentity3Initialization
	| normalizer colors |
	
	colors := Array with: Color blue with: Color white with: Color red.
	normalizer := RTNExplicitIdentityNormalizer
					withCommand: #yourself
					withColors: colors
					withDefaultColor: Color green.						
											
	self assert: (normalizer rtValue: 1) = Color blue.
	self assert: (normalizer rtValue: 2) = Color white.
	self assert: (normalizer rtValue: 3) = Color red.
	self assert: (normalizer rtValue: 4) = Color green.