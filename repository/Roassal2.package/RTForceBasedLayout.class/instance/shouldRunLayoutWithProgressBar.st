updating
shouldRunLayoutWithProgressBar
	^ self isJobInstalled and: [ self shouldUseProgressBar ]