stream extensions
endEntry
	"Display all the characters since the last endEntry, and reset the stream"
	self changed: #appendEntry.
	self reset