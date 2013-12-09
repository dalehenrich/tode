builtins
installTode
	[ 
	| installSession installTodeString |
	[ 
	installSession := self loginUsing: TodeInstallSession.
	[ 
	| transcriptOop transcriptOopType |
	transcriptOop := installSession executeStringNB: self installTranscriptClientForwarder envId: self environmentId.
	transcriptOopType := installSession asOopType: transcriptOop.
	installSession clientForwarderCache at: transcriptOopType put: Transcript.
	installSession
		executeStringNB: self installUpgradeGlassString envId: self environmentId;
		executeStringNB: self installMetacelloString envId: self environmentId;
		executeStringNB: self installGLASS1String envId: self environmentId;
		executeStringNB: self installTodeString envId: self environmentId;
		executeStringNB: self installImportScriptString envId: self environmentId;
		yourself ]
		ensure: [ installSession logout ] ]
		on: GsErrorNotification
		do: [ :ex | self error: 'Unable to log into server:' , ex description ] ]
		on: Error
		do: [ :ex | self halt ]