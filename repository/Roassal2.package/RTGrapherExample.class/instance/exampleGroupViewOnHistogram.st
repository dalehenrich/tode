sources
exampleGroupViewOnHistogram



| b ds |
b := RTGrapher new.
b extent: 300 @ 200.

ds := RTStackedDataSet new.
ds dotShape rectangle size: 0.
ds points: RTShape withAllSubclasses.
ds y: [ :c | c rtmethods size ].
ds barShape rectangle 
	width: 10;
	color: Color veryLightGray.
ds interaction 
	highlightColored: Color red.

ds interaction popup 
	named: [ :c | c name, ' methods' ] 
	background: Color veryVeryLightGray 
	group: [ :group :element | 
		| s ms |
		s := RTBox new size: #numberOfLinesOfCode; color: Color red.
		ms := element model rtmethods sortedAs: #numberOfLinesOfCode.
		group addAll: (s elementsOn: ms).
		RTGridLayout on: group ].
	
b add: ds.

b axisX noTick; noLabel.
b build.

^ b view