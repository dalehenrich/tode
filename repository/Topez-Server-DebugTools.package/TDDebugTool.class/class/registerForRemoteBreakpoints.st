remote breakpoints
registerForRemoteBreakpoints

	GemToGemAnnouncement announcer
		on: ClearAllBreakpointsAnnouncement
			send: #clearAllBreakpoints:
			to: self;
		on: SetOrClearBreakpointAnnouncement
			send: #setOrClearBreakpoint:
			to: self.