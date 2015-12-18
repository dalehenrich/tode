hooks
renderIn: aView

	| extremity1 extremity2 line cursor dragAndConstraint trachelShape aValue | 
	extremity1 := (RTBox new width: 5; height: 10) element.
	extremity2 := (RTBox new width: 5; height: 10) element.
	line := (RTLine new width: 5) edgeFrom: extremity1 to: extremity2.
	aView add: extremity1.
	aView add: extremity2.
	aView add: line.
	extremity2 translateTo: 200 @ 0.
	
	cursor := self elementOn: nil.
	
	dragAndConstraint := RTConstrainedDraggable new.
	dragAndConstraint rectangle: [ :someElement | extremity1 position corner: extremity2 position ].
	cursor @ dragAndConstraint.
	aView add: cursor.
	cursor translateTo: 100 @ 0.
	
	"We prepare a label if necessary"
	labelled ifTrue: [ 
		cursor @ (RTLabelled new text: 0).
		trachelShape := cursor attributeAt: #RTLabelledLabel ].
	
	"We compute the slider value, and call the callback"
	cursor when: TRMouseDragging do: [ :evt | 
		aValue := (cursor position x - extremity1 position x) / (extremity2 position x - extremity1 position x).
		aValue := aValue * max.
		callback rtValue: aValue.
		labelled ifTrue: [ trachelShape text: (aValue asFloat round: 2) asString ] ].

	"We keep track of the elements we add in the view"
	sliderElements := RTGroup new.
	sliderElements add: cursor.
	sliderElements add: extremity1.
	sliderElements add: extremity2.
