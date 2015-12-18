examples
example02
	"
	self new example02
	"
	| b |
	b := RTNameCloud new.
	b addStrings: (RTNameCloud rtmethods collect: #getSource).
	b open