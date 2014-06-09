remote breakpoints
sendClearAllBreaksSignal
	"Send a Gem to Gem signal"
	
	self remoteBreakpointsEnabled ifFalse: [ ^self ].
	ClearAllBreakpointsAnnouncement broadcast.