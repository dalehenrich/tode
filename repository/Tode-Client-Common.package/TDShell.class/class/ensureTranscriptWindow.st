system menu
ensureTranscriptWindow
	Smalltalk
		at: #TDTopezGemStoneClient
		ifPresent: [ :cl | 
			| bounds |
			bounds := cl windowProperties caculateWindowBounds at: #transcript.
			self resizeTranscript: bounds ]