as yet unclassified
on: anExporter targets: aRTShape
	| generator |
	generator := [ :e |  self new target: e;  yourself ].
	self on: anExporter targets: aRTShape generator: generator