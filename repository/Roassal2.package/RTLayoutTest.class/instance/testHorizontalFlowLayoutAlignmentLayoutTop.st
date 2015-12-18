as yet unclassified
testHorizontalFlowLayoutAlignmentLayoutTop
	| l es |
	es := (RTBox new size: [ :v | v * 10 ]) elementsOn: #(1 2 3).
	l := RTHorizontalFlowLayout new.
	l on: es.
	
"	RTView new
		addAll: es;
		open.
"		
	self assert: (es collect: #position) asArray = (Array with: (10.0@10.0) with: (15.0@30.0) with: (20.0@60.0))