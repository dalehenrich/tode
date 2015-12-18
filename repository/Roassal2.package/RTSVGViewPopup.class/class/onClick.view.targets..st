as yet unclassified
onClick: anExporter view: aRTView targets: aRTShape
	| generator |
	generator := [ :e |  self new target: e; click: true; view: aRTView; yourself ].
	self on: anExporter targets: aRTShape generator: generator