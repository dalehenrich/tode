as yet unclassified
onClick: anExporter text: aString color: aColor size: aNumber targets: aRTShape
	| generator |
	generator := [ :e |  self new target: e; text: aString; color: aColor; fontSize: aNumber; click: true; yourself ].
	self on: anExporter targets: aRTShape generator: generator