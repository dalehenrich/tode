sources
exampleSimple
	| b |
	b := RTStackBarPlot new.
	b add: #(1 2 3 4).
	b add: #(4 3 2 1).
	b add: #(5 3 2 0).
	b build.
	^ b view