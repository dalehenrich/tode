tests
testRender
	| v ds |
	b := RTGrapher new.
	ds := RTDataSet new.
	ds points: #(1 2).
	b add: ds.
	
	v := RTView new.
	b renderIn: v