sources
exampleBoxPlot3

| b createList r d today |
r := Random new.
createList := [ :size :d1 :d2 | (1 to: size) collect: [ :i | d1 + (r next * (d2-d1))] ].

b := RTGrapher new.
today := d := Date today.
(1 to: 10) do: [ :i | | ds |
	ds := RTBoxPlotDataSet new.
	ds points: (createList value: 20 value: 0 value: 20).
	ds model: d.
	ds x: [ :date| date julianDayNumber - today julianDayNumber + 1 ].
	b add: ds.
	d := d next.].
b build.
^ b view.
 