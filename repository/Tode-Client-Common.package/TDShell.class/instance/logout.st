session management
logout
	"close windows and clean up session state, if any"

	| tpz |
	self close.
	tpz := self topezClient.
	tpz ifNil: [ ^ self ].
	topezClient := nil.
	tpz logout.
	^ nil