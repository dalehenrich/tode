tests
testBasic

	| v s e es expand |
	v := RTView new.
	s := RTBox new width: [ :c | c numberOfVariables * 5 ]; height: #numberOfMethods.
	e := s elementOn: RTComposer.
	
	expand := (RTExpandable new
					group: [ :group :element | 
						es := (RTBox new color: Color red) elementsOn: element model methods.
						RTGridLayout on: es.
						group addAll: es]).
	e @ expand. 
	v add: e.
	
	self assert: v numberOfElements equals: 1.
	self deny: (expand hasElementBeenExpended: e).
	self deny: (expand isSelected: e).
	expand clickOn: e.
	self assert: (expand isSelected: e).
	self assert: (expand hasElementBeenExpended: e).
	self assert: v numberOfElements equals: 1 + RTComposer methods size.

	expand clickOn: e.
	self deny: (expand isSelected: e).
	self assert: v numberOfElements equals: 1.