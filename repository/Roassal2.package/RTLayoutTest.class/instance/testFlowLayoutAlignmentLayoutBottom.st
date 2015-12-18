tests
testFlowLayoutAlignmentLayoutBottom
	| l es |
	es := (RTBox new size: [ :v | v * 10 ]) elementsOn: #(1 2 3).
	l := RTFlowLayout new.
	l alignBottom.
	l on: es.
	
"	RTView new
		addAll: es;
		open.
"		
	self assert: (es collect: #position) asArray = (Array with: (10.0@0.0) with: (30.0@ -5.0) with: (60.0@ -10.0))
	