waiting-specific
waitFor: seconds
	animatedValue := VIAnimatedValue new
							evaluator: [ :t | blockToExecute value ];
							timer: (VITimer new cycleLength: seconds);
							yourself.
	