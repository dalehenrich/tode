testing
includesPoint: aPoint
	^ self shapes anySatisfy: [ :s | s includesPoint: aPoint ]