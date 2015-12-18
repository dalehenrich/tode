as yet unclassified
testExplicitIdentity2
	| normalizer |
	
	normalizer := RTNExplicitIdentityNormalizer
					withCommand: #yourself
					withColors: (Array with: Color blue with: Color white with: Color red) 
					withDefaultColor: Color green.						

	self assert: (normalizer rtValue: 1) = Color blue.
	self assert: (normalizer rtValue: 2) = Color white.
	self assert: (normalizer rtValue: 3) = Color red.
	self assert: (normalizer rtValue: -1) = Color green.
	self assert: (normalizer rtValue: 1000) = Color green.