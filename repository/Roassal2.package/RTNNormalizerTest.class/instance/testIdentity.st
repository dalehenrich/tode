identity
testIdentity
	| colorOne colorTwo normalizer |
	
	normalizer := RTNIdentityNormalizer new.
	colorOne := normalizer rtValue: 1.
	colorTwo := normalizer rtValue: 2.
	self deny: colorOne = colorTwo.

	colorOne := normalizer rtValue: 12.
	colorTwo := normalizer rtValue: 12.
	self assert: colorOne = colorTwo.