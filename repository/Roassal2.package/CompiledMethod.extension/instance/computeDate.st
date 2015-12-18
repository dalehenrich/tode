*roassal2
computeDate
	"Return the DateAndTime associated to this method"
	| s nbOfSpaces |
	s := self timeStamp.
	nbOfSpaces := s select: [ :c | c = $  ].
	nbOfSpaces size = 1
		ifTrue: [ ^ DateAndTime fromString: s ].

	nbOfSpaces size = 2
		ifTrue: [ ^ DateAndTime fromString: (s copyAfter: $ ) ].