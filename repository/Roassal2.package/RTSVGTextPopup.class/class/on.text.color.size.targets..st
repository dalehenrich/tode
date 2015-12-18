as yet unclassified
on: anExporter text: aString color: aColor size: aNumber targets: aRTShape
	| generator |
	generator := [ :e |  self new target: e; text: aString; color: aColor; fontSize: aNumber; yourself ].
	self on: anExporter targets: aRTShape generator: generator