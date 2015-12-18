as yet unclassified
on: anExporter targets: aRTShape generator: generator
	| interaction |
	anExporter view elements
		do: [ :e | 
			e trachelShape class = aRTShape
				ifTrue: [ 
					interaction := generator value: e.
					anExporter interactions at: e ifAbsent: [ anExporter interactions at: e put: OrderedCollection new ].
					(anExporter interactions at: e) add: interaction ] ]