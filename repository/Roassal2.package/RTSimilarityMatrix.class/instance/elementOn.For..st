visualization
elementOn: pair For: view
	| elt |
	elt := (RTElement on: pair).
	elt + (RTBox new
		color: (self colorForElement: elt);
		extent: self defaultExtent
	).
	self flag: #todo.
	elt @ (RTPopup new text: [self popupTextFor: elt]).
	elt when: TRMouseClick do: [:event | self action: pair ].
	"elt forward: ROMouseDragging."
	^ elt