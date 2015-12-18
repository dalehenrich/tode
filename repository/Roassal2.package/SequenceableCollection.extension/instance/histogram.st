*roassal2-core
histogram
	"
	Plot the histrogram (distribution) of the numerical values contained in myself.
	#(5 6 5 6 4 2 10) histogram
	#(5 6 5 6 4 2 10 10 10 10 10) histogram
	"
	
	| b ds |
	b := RTGrapher new.
	ds := RTHistogramSet new.
	ds points: self.
	ds barShape width: 10.
	ds barChartWithBarTitle: #second rotation: 0 color: Color black.
	b add: ds. 
	b axisX title: 'Values'.
	b axisY title: 'Occurences'.
	^ b
	
	
"	| b ds values |
	values := (RTDistribution on: self) annotatedFrequency.
	b := RTGrapher new.
	ds := RTStackedDataSet new.
	ds points: values.
	ds y: #first.
	ds interaction popupText: [ :tupple | tupple first asString, ' occurences of ', tupple second asString ].
	ds barShape width: 10.
	ds barChart #second rotation: 0 color: Color black.
	b add: ds.
	b axisX noLabel; noTick; title: 'Values'.
	b axisY title: 'Occurences'; noTick; noLabel.
	
	b addDecorator: (RTVerticalValuesDecorator new addAll: (0 to: (values collect: #first) max)).
	^ b "