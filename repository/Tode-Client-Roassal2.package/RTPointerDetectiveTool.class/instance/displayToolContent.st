as yet unclassified
displayToolContent
	| builder oopText |
	
	view canvas camera translateTo: 0@0.
	
	oopText :=  nil.
	builder := RTMenuBuilder new view: view.
	builder menu: 'Oop' callback: [oopText := UIManager default request: 'Enter oop' initialAnswer: '154679809'].
	builder menu: 'Run allPaths' callback: [self run: (oopText) limitArray: ''].
	builder menu: 'Run allReferences' callback: [self run: (oopText)].
	
	self setScrollBar.
