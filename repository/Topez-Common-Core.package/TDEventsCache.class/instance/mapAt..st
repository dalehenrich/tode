event map
mapAt: event
	^ self map at: event ifAbsent: [ self map at: event put: Dictionary new ]