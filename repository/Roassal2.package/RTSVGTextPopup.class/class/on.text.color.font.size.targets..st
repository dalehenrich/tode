as yet unclassified
on: anExporter text: aString color: aColor font: aFont size: aNumber targets: aRTShape
	| generator |
	generator := [ :e |  self new target: e; text: aString; color: aColor; font: aFont; fontSize: aNumber; yourself ].
	self on: anExporter targets: aRTShape generator: generator