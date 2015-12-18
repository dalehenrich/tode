as yet unclassified
onClick: anExporter targets: aRTShape
	| generator |
	generator := [ :e |  self new target: e; click: true; yourself ].
	self on: anExporter targets: aRTShape generator: generator