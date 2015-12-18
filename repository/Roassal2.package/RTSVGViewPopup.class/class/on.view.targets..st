as yet unclassified
on: anExporter view: aRTView targets: aRTShape
	| generator |
	generator := [ :e |  self new target: e; view: aRTView; yourself ].
	self on: anExporter targets: aRTShape generator: generator