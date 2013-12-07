as yet unclassified
installTranscriptClientForwarder
	^ '| transcriptClientForwarder |
transcriptClientForwarder := ClientForwarder new.
Smalltalk
  at: #''TranscriptProxy''
  ifPresent: [ :cl | 
    cl registerTranscriptClientForwarder: transcriptClientForwarder.
    ^ Reflection oopOf: transcriptClientForwarder ].
System commit.
'