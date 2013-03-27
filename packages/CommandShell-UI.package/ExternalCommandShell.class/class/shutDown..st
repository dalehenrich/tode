system startup
shutDown: quitting
	"System is going down. Stop input processing so we will not try to 
	refer to invalid IO streams when the image is restarted. If OSProcess
	is in this  image, it important that #startup be send to ThisOSProcess
	before it is sent to ExternalCommandShell. Therefore ensure that
	ExternalCommandShell appears after ThisOSProcess in the system startup
	list."

	| shell |
	quitting
		ifTrue: [(shell := self default)
			ifNotNil: [shell shutdownInOldSession]]
