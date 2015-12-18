sources
exampleBoxPlot1

| b createList r ds |
r := Random new.
createList := [ :size :d1 :d2 | (1 to: size) collect: [ :i | d1 + (r next * (d2-d1))] ].

b := RTGrapher new.
b extent: 70@300.
ds := RTBoxPlotDataSet new.
	ds points: (createList value: 20 value: 0 value: 20).
	b add: ds.
b axisX noLabel; noTick.
b build.
^ b view.
 