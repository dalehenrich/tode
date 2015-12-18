sources
exampleDeviation

| b colors points ds pts dec lb |
b := RTGrapher new.
colors := Array with: Color red with: Color blue.
points := OrderedCollection new.

colors do: [ :c |
	ds := RTStackedDataSet new.
	pts := ((1 to: 100) collect: [ :i | 50 atRandom - 25 ]) cumsum.
	points add: pts.
	ds points: pts.
	dec := RTDevVarDecorator new.
	dec moveBehind;
		deviation: 0.5;
		color: (c alpha: 0.3);
		points: pts.
	ds connectUsing: (RTLine new color: (c alpha: 0.5); width: 1 ).
	b add: ds.
	b addDecorator: dec.
	 ].

b axisX; axisY.
b build.

lb := RTLegendBuilder new.
lb view: b view.
colors doWithIndex: [ :c :i | 
	lb addColor: c text: 'Series  ', i printString ].
lb build.
b view @ RTZoomableView.
^ b view