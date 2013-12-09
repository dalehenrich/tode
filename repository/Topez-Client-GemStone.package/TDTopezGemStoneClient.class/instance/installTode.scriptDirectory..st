builtins
installTode: forceGLASSInstall scriptDirectory: scriptDirectory
	[ 
	[ 
	| installSession installTodeString glassNotInstalled |
	installSession := self loginUsing: TodeInstallSession.
	[ 
	glassNotInstalled := installSession
		executeStringNB: '(System myUserProfile symbolList objectNamed: #ConfigurationOfGLASS) == nil'
		envId: self environmentId ]
		ensure: [ installSession logout ].
	glassNotInstalled
		ifTrue: [ 
			true
				ifTrue: [ 
					"for now we will not attempt to install GLASS over GCI"
					^ 'GLASS must be pre-installed. Shut down your stone and restart after copying  $GEMSTONE/bin/extent0.seaside.dbf to $GEMSTONE/seaside/data/extent0.dbf.' ].
			forceGLASSInstall
				ifFalse: [ ^ 'GLASS not installed. If you want to force GLASS to be installed, use the `--force` option.' ].
			self installGLASS ].
	installSession := self loginUsing: TodeInstallSession.
	[ 
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
		ensure: [ installSession logout ] ]
		on: GsErrorNotification
		do: [ :ex | self error: 'Unable to log into server:' , ex description ] ]
		on: Error
		do: [ :ex | self halt ]