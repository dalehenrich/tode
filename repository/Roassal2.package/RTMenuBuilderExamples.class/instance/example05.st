examples
example05

	"
	self new example05
	"
	| v |
	v := RTView new.

	RTMenuBuilder new
		view: v;
		menu: 'add' submenu: 'circle' background: Color red 
			callback: [ v add: (RTEllipse new size: 40) element @ RTDraggable. v signalUpdate ];
		menu: 'add' submenu: 'box' background: Color blue
			callback: [ v add: (RTBox new size: 40) element @ RTDraggable. v signalUpdate ];
		menu: 'add2' submenu: 'circle' background: Color red 
			callback: [ v add: (RTEllipse new size: 40) element @ RTDraggable. v signalUpdate ];
		menu: 'add2' submenu: 'box' background: Color blue
			callback: [ v add: (RTBox new size: 40) element @ RTDraggable. v signalUpdate ];
		
		menu: 'add3' submenu: 'circle' background: Color red 
			callback: [ v add: (RTEllipse new size: 40) element @ RTDraggable. v signalUpdate ];
		menu: 'add3' submenu: 'box' background: Color blue
			callback: [ v add: (RTBox new size: 40) element @ RTDraggable. v signalUpdate ];
		build.	
	v open.
