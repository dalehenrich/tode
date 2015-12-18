A RTPopup is an interaction that dynamically add a text or a group of elements above the element pointed by the mouse.

example of use:
-=-=-=-=-=-=-=-=-=-=-=-=
v := RTView new.

es := RTLabel elementsOn: (1 to: 10).

v addAll: es.

es @ (RTPopup new 
	background: Color blue
	group: [ :group :el |  
 
		group addAll: (RTEllipse elementsOn: (1 to: el model)).
		RTWeightedCircleLayout new
			initialRadius: 50;
			on: group.
		]).

RTHorizontalLineLayout on: es.
v open
-=-=-=-=-=-=-=-=-=-=-=-=