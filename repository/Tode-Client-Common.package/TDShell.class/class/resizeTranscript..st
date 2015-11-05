transcript
resizeTranscript: transcriptBounds
	NonInteractiveTranscript isInstalled
		ifTrue: [ ^ self ].
	self basicResizeTranscript: transcriptBounds