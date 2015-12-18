helpers
createJS
	| dir s |
	dir := self directory.
	s := dir / 'roassal.js'.
	"s exists ifTrue: [ ^ self ]."
	s exists ifTrue: [ s delete ].
	s := s writeStream.
	[ self to: s writeText: self roassalJSContent ] ensure: [ s close ].