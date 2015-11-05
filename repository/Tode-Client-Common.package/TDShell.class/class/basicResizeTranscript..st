transcript
basicResizeTranscript: transcriptBounds
	(World systemWindows
		detect: [ :each | 
			(each model isKindOf: ThreadSafeTranscript)
				ifTrue: [ 
					each == Transcript
						ifTrue: [ true ]
						ifFalse: [ 
							each delete.
							false ] ]
				ifFalse: [ false ] ]
		ifNone: [ 
			Smalltalk
				at: #Transcript
				ifAbsent: [ 
					| oldTranscript |
					oldTranscript := Transcript.
					ThreadSafeTranscript install.
					self topezClientClass notifier dependents
						do: [ :client | client remapTranscriptClientForwarderFrom: oldTranscript to: Transcript ] ].
			Transcript open ])
		extent: transcriptBounds extent;
		position: transcriptBounds origin