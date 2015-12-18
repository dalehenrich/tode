min max
testHasBeenManuallySet03

	| axis |
	axis := RTAxisConfiguration new.
	axis maxValue: -5.
	self deny: axis hasMinValueBeenManuallySet.
	self assert: axis hasMaxValueBeenManuallySet.