hooks
renderIn: aView
	super renderIn: aView.
	RTVerticalLineLayout on: group.
	legendElement := (RTBox new
		borderColor: Color lightGray;
		fillColor: Color white) element.
	RTNest new on: legendElement nest: group.
	
	self isBelow ifTrue: [ 
		TRConstraint move: legendElement below: (RTGroup withAll: aView elements).
		legendElement translateBy: 0 @ offset. ].

	self isRight ifTrue: [ 
		TRConstraint move: legendElement onTheRightOf: (RTGroup withAll: aView elements).
		legendElement translateBy: offset @ 0. ].

	self isLeft ifTrue: [ 
		TRConstraint move: legendElement onTheLeftOf: (RTGroup withAll: aView elements).
		legendElement translateBy: offset @ 0. ].
	
	aView add: legendElement.
	group do: [ :g | aView addAll: g ].
	legendElement @ RTDraggable