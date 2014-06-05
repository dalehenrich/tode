remote breakpoints
sendSetOrClearBreakPointSignal: aString
	
	self remoteBreakpointsEnabled ifFalse: [ ^self ].
	SetOrClearBreakpointAnnouncement broadcastMessage: aString