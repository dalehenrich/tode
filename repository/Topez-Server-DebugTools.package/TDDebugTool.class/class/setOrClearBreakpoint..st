remote breakpoints
setOrClearBreakpoint: aGemToGemAnnouncement
	"Session received a Gem to Gem signal"

	[ aGemToGemAnnouncement signalMessage evaluate ]
		on: Error
		do: [:ex | | stdout |
			(ObjectLogEntry error: 'ERROR during: ', aGemToGemAnnouncement signalMessage printString object: ex) addToLog.
			"Cannot count on being in a transaction when exception is signalled, so dump info to stdout"
			stdout := GsFile stdoutServer.
			stdout nextPutAll: '----------- Remote Breakpoint ERROR Encountered: ', DateAndTime now printString.
			stdout cr.
			stdout nextPutAll: ex description.
			stdout cr.
			stdout nextPutAll: (GsProcess stackReportToLevel: 300).
			stdout nextPutAll: '-----------'.
			stdout cr.
			stdout close].