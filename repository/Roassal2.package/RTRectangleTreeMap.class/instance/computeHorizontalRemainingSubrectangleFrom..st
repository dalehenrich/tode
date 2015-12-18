utils
computeHorizontalRemainingSubrectangleFrom: row

	| areaToLayout remainingSubrectangle currentRect currentOrigin |
	
	areaToLayout := row inject: 0 into: [ :s :e | s + (e attributes at: #area) ].
	
	remainingSubrectangle := RTRectangleTreeMap new.
	
	currentRect := self currentSubrectangle.
	currentOrigin := currentRect origin.
	
	remainingSubrectangle origin: ((currentOrigin x + (areaToLayout / currentRect height)) @ currentOrigin y).
	remainingSubrectangle corner: currentRect corner.
	
	^ remainingSubrectangle.
	 