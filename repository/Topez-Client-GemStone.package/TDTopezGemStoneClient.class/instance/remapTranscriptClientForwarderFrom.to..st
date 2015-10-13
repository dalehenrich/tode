as yet unclassified
remapTranscriptClientForwarderFrom: oldTranscript to: newTranscript
	session
		ifNotNil: [ 
			| transcriptOop |
			transcriptOop := session clientForwarderCache
				keyAtValue: oldTranscript
				ifAbsent: [ 
					Transcript
						cr;
						show: 'Hmmm .. no client forwarder found for Transcript'.
					^ self ].
			session clientForwarderCache at: transcriptOop put: newTranscript ]