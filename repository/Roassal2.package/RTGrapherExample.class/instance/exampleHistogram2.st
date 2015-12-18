sources
exampleHistogram2
	| b ds |
	b := RTGrapher new.
	
	"We defien the size of the charting area"
	b extent: 500 @ 100.
	
	ds := RTStackedDataSet new.
	"When the mouse is above a bar, say which class we are point at"
	ds interaction popup.
	
	"Each subclass of RTShape will be a bar"
	ds points: RTShape withAllSubclasses.
	
	"The height of a bar will be the number of methods (defined in the instance side)"
	ds y: [ :c | c rtmethods size ].
	
	"We set a color of the rectangle"
	ds dotShape rectangle color: Color blue.
	
	"Set the width of a bar"
	ds barShape color: Color blue; width: 10.
	b add: ds.
	
	b axisX.
	b axisYWithNumberOfTicks: 4.
	
b build.
^ b view