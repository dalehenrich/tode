tests
testFlowLayoutAlignmentLayoutCenter
	| l es |
	es := (RTBox new size: [ :v | v * 10 ]) elementsOn: #(1 2 3).
	l := RTFlowLayout new.
	l alignCenter.
	l on: es.
	
"	RTView new
		addAll: es;
		open.
		
"	self assert: (es collect: #position) asArray = (Array with: (10.0@5) with: (30.0@5) with: (60.0@5))
