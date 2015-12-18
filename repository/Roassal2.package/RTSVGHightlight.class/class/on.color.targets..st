as yet unclassified
on: anExporter color: aColor targets: aRTShape
	| generator |
	generator := [ :e |  self new target: e; color: aColor; yourself ].
	self on: anExporter targets: aRTShape generator: generator