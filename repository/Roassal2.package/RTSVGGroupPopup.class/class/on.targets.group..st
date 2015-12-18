as yet unclassified
on: anExporter targets: aRTShape group: aGroupBlock
	| generator |
	generator := [ :e |  self new target: e; group: aGroupBlock;  yourself ].
	self on: anExporter targets: aRTShape generator: generator