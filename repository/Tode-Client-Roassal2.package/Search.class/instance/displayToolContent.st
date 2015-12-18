as yet unclassified
displayToolContent
	| builder class method obj oop buttons|
	class := nil.
	method := nil.
	builder := RTMenuBuilder new view: view.
	builder menu: 'Class' callback: [class := UIManager default request: 'Enter a Class' initialAnswer: 'UserProfile'].
	builder menu: 'Method' callback: [method := UIManager default request: 'Enter a method or subString of a method, cancel for all methods' initialAnswer: 'userId'].
	builder menu: 'Object' callback: [obj := UIManager default request: 'Enter an Object' initialAnswer: 'UserProfile'].
	builder menu: 'Oop' callback: [oop := UIManager default request: 'Enter an Oop' initialAnswer: '68865'].
	
	buttons := RTGroup new.
	buttons add: (((RTLabel text: 'Search') elementOn: 'Search selectors') when: TRMouseClick do: [self searchClass: class selector: method]).
	buttons add: (((RTLabel text: 'SourceCode') elementOn: 'Source code for method in class') when: TRMouseClick do: [self sourceCodeClass: class selector: method]).
	buttons add: (((RTLabel text: 'as object') elementOn: 'Oop as object') when: TRMouseClick do: [self oopAsObj: oop ]).
	buttons add: (((RTLabel text: 'as oop') elementOn: 'Object asOop') when: TRMouseClick do: [self objAsOop: obj]).
	buttons add: (((RTLabel text: 'inspect') elementOn: 'Object inspect') when: TRMouseClick do: [self insp: obj]).
	
	self view 	addAll: buttons.
		
	RTVerticalLineLayout new gapSize: 20; applyOn: buttons.
	buttons @ RTPopup.
	buttons @ RTHighlightable.
	

	
