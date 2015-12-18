as yet unclassified
displayToolContent
	| oopText |
	oopText := nil.
	menu := RTMenuBuilder new view: view.
	menu menu: 'Oop' callback: [oopText := UIManager default request: 'Enter oop' initialAnswer: '68865'].
	
	shapeMenus := Array with: ('rectangle'->[:m |]) with:('ellipse'->[:m |]).
	shapeMenus := menu menu: 'Shape' subcheckmenus: shapeMenus background: (Color lightGray alpha: 0).
	RTMenuGroup on: shapeMenus.
	shapeMenus first selected: true.
	
	layoutMenus := Array with: ('tree'->[:m |]) with:('circle'->[:m |]) with:('cluster'->[:m |]).
	layoutMenus := menu menu: 'Layout' subcheckmenus: layoutMenus background: (Color lightGray alpha: 0).
	RTMenuGroup on: layoutMenus.
	layoutMenus first selected: true.
	
	colorMetricMenus := Array with: ('numBerOfMethods'->[:m |]).
	colorMetricMenus := menu menu: 'Color metric' subcheckmenus: colorMetricMenus background: (Color lightGray alpha: 0).
	RTMenuGroup on: colorMetricMenus.
	colorMetricMenus first selected: true.
	
	sizeMetricMenus := Array with: ('numBerOfMethods'->[:m |]).
	sizeMetricMenus := menu menu: 'Size metric' subcheckmenus: sizeMetricMenus background: (Color lightGray alpha: 0).
	RTMenuGroup on: sizeMetricMenus.
	sizeMetricMenus first selected: true.
		
	menu menu: 'Run' callback: [self run: oopText].
	
	

	
