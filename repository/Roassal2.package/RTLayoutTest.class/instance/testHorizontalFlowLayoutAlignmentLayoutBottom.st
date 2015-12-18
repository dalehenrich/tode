as yet unclassified
testHorizontalFlowLayoutAlignmentLayoutBottom
	| l es |
	es := (RTBox new size: [ :v | v * 10 ]) elementsOn: #(1 2 3).
	l := RTHorizontalFlowLayout new.
	l alignBottom.
	l on: es.
	
"	RTView new
		addAll: es;
		open.
"		
	self assert: (es collect: #position) asArray = (Array with: (0@10.0) with: (-5@30.0) with: (-10.0@ 60.0))
	