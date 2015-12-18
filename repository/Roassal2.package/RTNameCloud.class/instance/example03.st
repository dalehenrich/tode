examples
example03
	"
	self new example03
	"
	| b |
	b := RTNameCloud new. 
	b dictionary: (RTSourceCodeDictionary new).
	RTObject withAllSubclasses do: [ :c | 
		b addObjects: c rtmethods description: #getSource ].
	b open