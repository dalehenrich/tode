as yet unclassified
onClick: anExporter text: aString targets: aRTShape
	| generator |
	generator := [ :e |  self new target: e; text: aString; click: true; yourself ].
	self on: anExporter targets: aRTShape generator: generator