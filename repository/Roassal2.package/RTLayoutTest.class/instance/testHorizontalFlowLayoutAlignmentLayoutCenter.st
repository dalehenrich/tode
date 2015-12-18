as yet unclassified
testHorizontalFlowLayoutAlignmentLayoutCenter
	| l es |
	es := (RTBox new size: [ :v | v * 10 ]) elementsOn: #(1 2 3).
	l := RTHorizontalFlowLayout new.
	l alignCenter.
	l on: es.
	
"	RTView new
		addAll: es;
		open.
		
"	self assert: (es collect: #position) asArray = (Array with: (5@10.0) with: (5@30.0) with: (5@60.0))
