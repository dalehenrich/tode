sources
exampleDotsLeyendAndImageBackground

| b ds  title lb |
b := RTGrapher new.
b extent: 750 @ 450.

title := (RTLabel new text: 'Global Sales') element.
title setAsFixed.
b view add: title.
RTHorizontalLineLayout on: (Array with: title). 

(Array with: Color red with: Color blue with: Color green) do: [ :c |
	ds := RTStackedDataSet new.
	ds dotShape circle size: 10.
	ds points: ((1 to: 100) collect: [ :i | 50 atRandom - 25 ]) cumsum.
	ds connectUsing: (RTLine new color: (c alpha: 0.5); width: 5).
	b add: ds.
	 ].

b axisX; axisY.
b build.

lb := RTLegendBuilder new.
lb view: b view.
lb addColor: Color red text: 'Corporation 1'.
lb addColor: Color blue text: 'Corporation 2'.
lb addColor: Color green text: 'Corporation 3'.
lb build.
b view  canvas camera scale:  0.7.
b view @ RTZoomableView.

^ b view