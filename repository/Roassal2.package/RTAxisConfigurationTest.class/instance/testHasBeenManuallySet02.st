min max
testHasBeenManuallySet02

	| axis |
	axis := RTAxisConfiguration new.
	axis minValue: -5.
	self assert: axis hasMinValueBeenManuallySet.
	self deny: axis hasMaxValueBeenManuallySet.