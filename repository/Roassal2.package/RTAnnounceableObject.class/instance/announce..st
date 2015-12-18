announce
announce: evt
	"Announce the event. If a callback for the event evt is defined, then it is executed, with myself as argument."
	| t |
	t := evt asAnnouncement.
	t shape: self trachelShape.
	self announcer announce: evt