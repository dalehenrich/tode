basic
basic02
	"
	self new basic02
	"
	| builder |
	builder := RTSimon new.
	builder shape current externalRadius: [ :obj | (obj * 3) + 80].
	builder models: (1 to: 20).
	builder open