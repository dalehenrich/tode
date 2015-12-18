identity
testIdentityWithCommand
	| colorOne colorTwo normalizer |
	
	normalizer := RTNIdentityNormalizer withCommand: #last.
	colorOne := normalizer rtValue: 'bob'.
	colorTwo := normalizer rtValue: 'tom'.
	self deny: colorOne = colorTwo.

	colorOne := normalizer rtValue: 'anna'.
	colorTwo := normalizer rtValue: 'maria'.
	self assert: colorOne = colorTwo.