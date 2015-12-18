as yet unclassified
onClick: anExporter color: aColor targets: aRTShape
	| generator |
	generator := [ :e |  self new target: e; color: aColor; click: true; yourself ].
	self on: anExporter targets: aRTShape generator: generator