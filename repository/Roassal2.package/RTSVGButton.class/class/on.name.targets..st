as yet unclassified
on: anExporter name: aName targets: aRTShape
	| generator |
	generator := [ :e |  self new target: e; name: aName; yourself ].
	self on: anExporter targets: aRTShape generator: generator