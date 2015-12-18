as yet unclassified
example01
	"
	self new example01
	"
	| b |
	b := RTDepMatrix new.
	b shape rectangle size: 20.
	b horizontal: 'ABCDEF'.
	b vertical:  'DAEFCB'.
	b open