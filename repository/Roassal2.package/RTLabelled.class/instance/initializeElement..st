hooks
initializeElement: element
	| s t callback |
	t := text rtValue: element.
	t isNil ifTrue: [ ^ self ].
	
	s := element trachelShape.
	lbl := TRLabelShape new text: t asString.
	lbl color: (color rtValue: element).
	lbl fontSize: (fontSize rtValue: element model).
	
	"We first get a reference to the canvas, and then we add the shape in it"
	"We are using the variable canvas to let the user specificy the canvas (or the view) before 
	adding the element into it"
	canvas := (canvas rtValue: element).
	canvas addShape: lbl.
	
	self make: lbl highlightableIfNecessaryBy: element.
	
	"Make sure that if we remove the element, the trachel shape is also removed"
	callback := TRRemoveCallback new block: [ :shape | lbl remove ].
	element trachelShape addCallback: callback.
	element 
		attributeAt: #RTLabelledCallback put: callback;
		attributeAt: #RTLabelledLabel put: lbl.
	
	"Not really nice. Maybe a different solution could be to have a double dispatch"
	(element isKindOf: RTEdge) 
		ifTrue: [ TRConstraint 
							stick: lbl 
							between: element from trachelShape 
							and: element to trachelShape
							offset: offsetOnEdge. 
				  ^ lbl ].

	
	self isTop ifTrue: [ TRConstraint stick: lbl above: s ]. 
	self isBelow ifTrue: [ TRConstraint stick: lbl below: s ].
	self isLeft ifTrue: [ TRConstraint stick: lbl onTheLeftOf: s ].
	self isRight ifTrue: [ TRConstraint stick: lbl onTheRightOf: s ].
	self isCenter ifTrue: [ TRConstraint stick: lbl onTheCenterOf: s ].
	self isBottomLeft ifTrue: [ TRConstraint stick: lbl onTheBottomLeftOf: s ].
	^ lbl.