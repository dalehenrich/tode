builtins
testLogin
	[ 
	| testSession description gemstoneVersion |
	description := self sessionDescription.
	gemstoneVersion := description gemstoneVersion.
	((gemstoneVersion beginsWith: '2') or: [ gemstoneVersion beginsWith: '3.0' ])
		ifTrue: [ ^ 'tODE is not supported on ' , gemstoneVersion printString , '. You must use GemStone version ''3.1.0'' or later.' ].
	testSession := self loginUsing: TodeInstallSession.
	[ 
	| transcriptOop transcriptOopType |
	transcriptOop := testSession executeStringNB: self installTranscriptClientForwarder envId: self environmentId.
	transcriptOopType := testSession asOopType: transcriptOop.
	testSession clientForwarderCache at: transcriptOopType put: Transcript.
	^ self testLogin: testSession ]
		ensure: [ testSession logout ] ]
		on: Error
		do: [ :ex | 
			(ex description endsWith: 'External module not found')
				ifTrue: [ ^ self testLoginExternalModuleNotFound ].
			(ex description includesSubString: 'Client version is')
				ifTrue: [ ^ self testLoginGciVersionMismatch: ex ].
			(ex description includesSubString: 'Stone Repository monitor cannot be reached')
				ifTrue: [ ^ self testLoginStoneNotFound: ex ].
			(ex description includesSubString: 'NetLDI service')
				ifTrue: [ ^ self testLoginNetLDIServiceNotFound: ex ].
			^self testLoginGenericError: ex ]