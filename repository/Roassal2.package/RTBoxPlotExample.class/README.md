RTBoxPlotExample new installTitle: 'BoxPlot1' 
		code:
		'
| b createList r ds |
r := Random new.
createList := [ :size :d1 :d2 | (1 to: size) collect: [ :i | d1 + (r next * (d2-d1))] ].

b := RTGrapher new.
ds := RTBoxPlotDataSet new.
	ds points: (createList value: 20 value: 0 value: 20).
	b add: ds.
b build.
b view.
 '