sources
exampleUsingLegend

| clss b lb n ds |
b := RTGrapher new.
b extent: 300 @ 200.

clss := Array with: RTElement with: RTEdge.
n := RTMultiLinearColorForIdentity new objects: clss.
clss do: [ :cls |
	ds := RTStackedDataSet new.
	ds points: (cls rtmethods sortedAs: #numberOfLinesOfCode).
	ds connectColor: (n rtValue: cls).
	ds y: #numberOfLinesOfCode.
	b add: ds.
].
	
b axisY; axisX.
b build.


"defining the legend"
lb := RTLegendBuilder new.
lb view: b view.
lb addText: 'Distribution of number of Methods in some classes'.
clss do: [ :aClass |
	lb addColor: (n rtValue: aClass) text: aClass name.
].
lb build.

^ lb view