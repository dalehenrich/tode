tode installation
installTode: forceGLASSInstall scriptDirectory: scriptDirectory
	self
		installTode: [ :installSession | 
			| transcriptOop transcriptOopType |
			transcriptOop := installSession executeStringNB: self installTranscriptClientForwarder envId: self environmentId.
			transcriptOopType := installSession asOopType: transcriptOop.
			installSession clientForwarderCache at: transcriptOopType put: Transcript.
			installSession
				executeStringNB: (self installUpgradeGlassString: scriptDirectory) envId: self environmentId;
				executeStringNB: (self installMetacelloString: scriptDirectory) envId: self environmentId;
				executeStringNB: (self installTodeGLASS1String: scriptDirectory) envId: self environmentId;
				executeStringNB: (self installTodeString: scriptDirectory) envId: self environmentId;
				yourself.
			^ 'finished tODE install' ]
		forceGLASSInstall: forceGLASSInstall