instance creation
fromDirection: aDirection position: aPoint
	^ self new
		position: aPoint;
		direction: aDirection;
		yourself