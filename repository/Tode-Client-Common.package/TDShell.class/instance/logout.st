built-ins
logout
	"close windows and clean up session state, if any"

	| tpz |
	self close.
	tpz := self topezClient.
	tpz ifNil: [ ^ nil ].
	topezClient := nil.
	tpz logout.
	^ nil