sources
exampleVectorEditing
	| view selected statusBar |
	view := RTView new.
	selected := nil.
	statusBar := nil.
	
	view when: TRMouseClick do: [ :evt |
		selected == #line ifTrue: [ 
			| ex1 ex2 line |
			ex1 := (RTBox new size: 10; color: (Color purple alpha: 0.2)) element. 
			ex2 := (RTBox new size: 10; color: (Color purple alpha: 0.2)) element.
			ex1 translateTo: evt position.
			ex2 translateTo: evt position + (100 @ 60).
			ex1 @ RTHighlightable.
			ex2 @ RTHighlightable.
			ex1 @ RTDraggable. 
			ex2 @ RTDraggable.
			line := (RTLine new "width: 3;" color: (Color blue alpha: 0.2)) edgeFrom: ex1 to: ex2.
			view addAll: (Array with: ex1 with: ex2 with: line ).
			line trachelShape pushBack.
		].

		selected == #circle ifTrue: [ 
			| ellipse |
			ellipse := (RTEllipse new size: 40; color: (Color yellow alpha: 0.2)) element. 
			ellipse translateTo: evt position.		
			ellipse @ RTDraggable. 
			view add: ellipse.		
		].

		
		selected == #rectangle ifTrue: [ 
			| box |
			box := (RTBox new width: 40; height: 30; color: (Color blue alpha: 0.2)) element. 
			box translateTo: evt position.		
			box @ RTDraggable. 
			view add: box.		
		].
		view canvas signalUpdate.
	].



	view @ RTDraggableView.

	view addMenu: '+ line' callback: [ selected := #line. statusBar text: 'line' ].
	view addMenu: '+ circle' callback: [ selected := #circle. statusBar text: 'circle' ].
	view addMenu: '+ rectangle' callback: [ selected := #rectangle. statusBar text: 'rectangle' ].
	view addMenu: 'Info' callback: [ TRPlatform current inform: 'Vectorial editing is hyper cool' ].

	statusBar := TRLabelShape new.
	statusBar text: 'Please, select an option'.
	view canvas addShape: statusBar.
	statusBar setAsFixed.
	TRConstraint stickAtTheBottomOfTheWindow: statusBar.

	view canvas color: Color white.
	^ view