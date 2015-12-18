explicit identity
testExplicitIdentity
	| normalizer colorOne colorTwo |
	
	normalizer := RTNExplicitIdentityNormalizer 
						withCommand: #last 
						withColors: (Array with: Color blue with: Color white with: Color red) 
						withDefaultColor: Color green.
						
	colorOne := normalizer rtValue: 'alex'.
	colorTwo := normalizer rtValue: 'suffix'.
	self assert: (colorOne = colorTwo)

