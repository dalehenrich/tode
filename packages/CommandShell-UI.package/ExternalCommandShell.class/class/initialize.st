class initialization
initialize
	"If OSProcess is in this  image, it important that #startup be send to
	ThisOSProcess before it is sent to ExternalCommandShell. Therefore ensure
	that ExternalCommandShell appears after ThisOSProcess in the system
	startup list."

	"ExternalCommandShell initialize"

	ExternalShell ifNotNil:
		[ExternalShell stop.
		ExternalShell := nil].
	Smalltalk addToStartUpList: self
