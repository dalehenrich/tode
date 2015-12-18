announce
testCaseAnnounce: evt
	"It is used for Test Cases because in that case evt does not know where it has been announced."
	| evtInstance |
	evtInstance := evt shape: self trachelShape.
	self announce: evtInstance