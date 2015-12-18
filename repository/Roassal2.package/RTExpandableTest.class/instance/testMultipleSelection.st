tests
testMultipleSelection

	| v es expandable |
	v := RTView new.

	es := (RTBox new size: 30) elementsOn: #(1 2).
	es @ RTPopup.

	expandable := RTExpandable new
				group: [:group :el | 
					group add: ((RTBox new color: Color red) elementOn: 1).
					];
				afterBlock: [ RTHorizontalLineLayout on: es ].
	es @ expandable.

	v add: es.
	RTHorizontalLineLayout on: es.
	
	expandable clickOn: es first.
	"Position of the red inner node is the same than the first encapsulating node"
	self assert: es first position equals: v elements last position.	
	
	expandable clickOn: es first.
	expandable clickOn: es first.
	
	self assert: v numberOfElements equals: 3.
	
	"Position of the red inner node is the same than the first encapsulating node"
	self assert: es first position equals: v elements last position.	
