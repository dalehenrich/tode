sources
exampleTitle


| b classes deco |
b := RTGrapher new.
b extent: 700 @ 200.
classes := RTShape withAllSubclasses.
classes do: [ :cls | | ds |
	ds := RTBoxPlotDataSet new.
	ds points: cls methods.
	ds model: cls.
	ds y: [ :method | method numberOfLinesOfCode ].
	b add: ds.
].

b axisX noTick; noLabel.

deco := RTHorizontalAllValuesDecorator new.
deco labelRotation: -45;
	labelConversion: [ :index | classes at: index ].
b addDecorator: deco.

b build.
^ b view
 