tode installation
installUpdateTode: forceGLASSInstall scriptDirectory: scriptDirectory
	self
		installTode: [ :installSession | 
			| transcriptOop transcriptOopType |
			transcriptOop := installSession executeStringNB: self installTranscriptClientForwarder envId: self environmentId.
			transcriptOopType := installSession asOopType: transcriptOop.
			installSession clientForwarderCache at: transcriptOopType put: Transcript.
			installSession
				executeStringNB: (self installTodeString: scriptDirectory) envId: self environmentId;
				yourself.
			^ 'finished tODE update' ]
		forceGLASSInstall: forceGLASSInstall