utils
computeVerticalRemainingSubrectangleFrom: row

	| areaToLayout remainingSubrectangle currentRect currentOrigin |
	
	areaToLayout := row inject: 0 into: [ :s :e | s + (e attributes at: #area) ].
	
	remainingSubrectangle := RTRectangleTreeMap new.
	
	currentRect := self currentSubrectangle.
	currentOrigin := currentRect origin.
	
	remainingSubrectangle origin: ((currentOrigin x) @ ((currentOrigin y) + (areaToLayout / currentRect width))).
	remainingSubrectangle corner: currentRect corner.
	
	^ remainingSubrectangle.
	 