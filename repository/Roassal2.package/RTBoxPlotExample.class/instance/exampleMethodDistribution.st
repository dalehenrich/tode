sources
exampleMethodDistribution

| b ds |
b := RTGrapher new.
b extent: 400 @ 200.
RTShape withAllSubclasses do: [ :cls |
	ds := RTBoxPlotDataSet new.
	ds points: (cls methods collect: #numberOfLinesOfCode).
	b add: ds.
].
b build.
^ b view