*roassal2-core
plotFrequency: nbOfInterval
	
	"
	#(1 1 1 3 4 3 4) plotFrequency: 3
	"
	
	| b ds |
	b := RTGrapher new.
	
	"We defien the size of the charting area"
"	b extent: 500 @ 100.
"	
	ds := RTStackedDataSet new.
	"When the mouse is above a bar, say which class we are point at"
	ds interaction popupText: [ :set | set size printString, ' x ', set anyOne printString ].
	ds points: ((RTDistribution on: self) frequencyWithAmountOfIntervals: nbOfInterval).
	ds y: #size.
	ds barShape rectangle color: Color blue.
	b add: ds.

	b build.
	^ b view
	