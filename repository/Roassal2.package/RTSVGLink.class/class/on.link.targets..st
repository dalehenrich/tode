as yet unclassified
on: anExporter link: anHref targets: aRTShape
	| generator |
	generator := [ :e |  self new target: e; link: anHref; yourself ].
	self on: anExporter targets: aRTShape generator: generator