waiting-specific
waitFor: seconds after: aBlock
	animatedValue := VIAnimatedValue new
							evaluator: [ :t | ];
							finishCallback: aBlock;
							timer: (VITimer new cycleLength: seconds);
							yourself.
	