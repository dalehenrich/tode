as yet unclassified
on: anExporter name: aName values: values targets: aRTShape
	| generator |
	generator := [ :e |  self new target: e; name: aName; val: values; yourself ].
	self on: anExporter targets: aRTShape generator: generator