examples
example04
	"
	self new example04
	"
	| b |
	b := RTNameCloud new.
	b minHeight: 20.
	b maxHeight: 30.
	b addString: 'I am not that tall but I speak many languages. But I have tall legs and big feet'.
	b open