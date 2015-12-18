visualization
elementOn: pair forView: view andStack: stack
	| elt |
	elt := (RTElement on: pair ).
	elt + (RTBox new
		color: (self colorForElement: elt);
		extent: self defaultExtent
	).
	elt @ (RTPopup new text: [self popupTextFor: elt] ).

	elt when: TRMouseClick do: [:event | self action: pair ].
"	elt forward: ROMouseDragging."
	^ elt