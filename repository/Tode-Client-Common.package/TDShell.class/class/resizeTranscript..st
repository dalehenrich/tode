transcript
resizeTranscript: transcriptBounds
	(World systemWindows
		detect: [ :each | each model = Transcript ]
		ifNone: [ 
			| oldTranscript |
			oldTranscript := Transcript.
			ThreadSafeTranscript install.
			self topezClientClass notifier dependents do: [ :client | client remapTranscriptClientForwarderFrom: oldTranscript to: Transcript ].
			Transcript open ])
		extent: transcriptBounds extent;
		position: transcriptBounds origin