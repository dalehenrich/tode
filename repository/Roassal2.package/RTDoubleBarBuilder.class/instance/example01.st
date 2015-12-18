examples
example01
	"
	self new example01
	"
	| b |
	b := RTDoubleBarBuilder new.
	b points: RTShape withAllSubclasses.
	b bottomValue: #numberOfMethods.
	b topValue: #numberOfVariables.
	b open maximize