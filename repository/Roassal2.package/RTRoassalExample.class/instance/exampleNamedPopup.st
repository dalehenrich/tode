sources
exampleNamedPopup

| v es |
v := RTView new.

es := RTLabel elementsOn: (1 to: 10).

v addAll: es.

es @ (RTPopup new 
	named: #yourself
	background: Color blue
	group: [ :group :el |  
 
		group addAll: (RTEllipse elementsOn: (1 to: el model)).
		RTWeightedCircleLayout new
			initialRadius: 50;
			on: group.
		]).

RTHorizontalLineLayout on: es.

	^ v