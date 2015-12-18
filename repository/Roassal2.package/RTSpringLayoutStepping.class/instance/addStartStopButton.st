public-configuration
addStartStopButton

	view canvas addMenu: 'Toggle Animation' callback: [
		(view canvas hasAnimation: self)
			ifTrue: [ view canvas removeAnimation: self ]
			ifFalse: [ view canvas addAnimation: self ] ]