tode installation
loadTode: options
	self
		installTodeBlock: [ :installSession | 
			| transcriptOop transcriptOopType |
			transcriptOop := installSession executeStringNB: self installTranscriptClientForwarder envId: self environmentId.
			transcriptOopType := installSession asOopType: transcriptOop.
			installSession clientForwarderCache at: transcriptOopType put: Transcript.
			installSession
				executeStringNB: (self installUpgradeGlassString: options) envId: self environmentId;
				executeStringNB: (self installMetacelloString: options) envId: self environmentId;
				executeStringNB: (self installTodeGLASS1String: options) envId: self environmentId;
				executeStringNB: (self installTodeString: options) envId: self environmentId;
				yourself.
			^ 'finished tODE install' ]
		