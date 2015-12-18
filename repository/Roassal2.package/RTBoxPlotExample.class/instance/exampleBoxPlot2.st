sources
exampleBoxPlot2

| b createList r |
r := Random new.
createList := [ :size :d1 :d2 | (1 to: size) collect: [ :i | d1 + (r next * (d2-d1))] ].

b := RTGrapher new.
(1 to: 10) do: [ :i | | ds |
	ds := RTBoxPlotDataSet new.
	ds points: (createList value: 20 value: 0 value: 20).
	b add: ds.].
b build.
^ b view.
 