accessing
width
	width ifNil: [ width := self box width rounded ].
	^ width