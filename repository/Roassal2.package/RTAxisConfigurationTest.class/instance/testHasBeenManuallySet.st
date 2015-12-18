min max
testHasBeenManuallySet

	| axis |
	axis := RTAxisConfiguration new.
	self deny: axis hasMinValueBeenManuallySet.
	self deny: axis hasMaxValueBeenManuallySet.