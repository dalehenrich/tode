tode installation
installUpdateTode: options
	self
		installTodeBlock: [ :installSession | 
			| transcriptOop transcriptOopType |
			transcriptOop := installSession executeStringNB: self installTranscriptClientForwarder envId: self environmentId.
			transcriptOopType := installSession asOopType: transcriptOop.
			installSession clientForwarderCache at: transcriptOopType put: Transcript.
			installSession
				executeStringNB: (self installTodeString: options) envId: self environmentId;
				yourself.
			^ 'finished tODE update' ]