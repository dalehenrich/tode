as yet unclassified
example06
	"
	self new example06
	"
	| b |
	b := RTDepMatrix new.
	b horizontal: (1 to: 10).
	b vertical:  (1 to: 10).
	b function: [ :x :y | (x + y) < 10 ].
	b open