initialization
initialize
	super initialize.
	self strategy: RTSunburstConstantWidthStrategy new.
	self shape arc color:  [ :o | Color random ].
	self weight: [ :e | 1 ].
	
	self interactions add: RTPopup.