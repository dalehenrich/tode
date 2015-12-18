centering
testCenter3AndTranslation
	| v es shape |
	v := RTView new. 
	shape := RTCompositeShape new.
	shape add: (RTBox new height: 10; color: Color green; width: #yourself).
	shape add: (RTBox new height: 10; color: Color red; width: [ :cc | 100 - cc ]).
	shape vertical.
	
	es := shape elementsOn: #(0 50 100).
	v addAll: es.
	es translateTo: 10 @ 10.
	
	self assert: es first position equals: 10 @ 10.
	self assert: es second position equals: 10 @ 10.
	self assert: es third position equals: 10 @ 10.
