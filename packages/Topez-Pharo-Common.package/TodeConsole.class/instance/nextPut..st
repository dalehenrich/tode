stream extensions
nextPut: anObject 

	self scheduleToEvaluate:
		[super nextPut: anObject]