as yet unclassified
on: anExporter text: aString targets: aRTShape
	| generator |
	generator := [ :e |  self new target: e; text: aString; yourself ].
	self on: anExporter targets: aRTShape generator: generator