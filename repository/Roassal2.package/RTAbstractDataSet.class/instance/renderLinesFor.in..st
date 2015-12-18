utility
renderLinesFor: elements in: aView
	"Render the lines between elements if necessary"
	| t l |
	shouldConnect ifFalse: [ ^ self ].

	t := elements first.
	elements allButFirst
		do: [ :tt | 
			l := lineBuilder edgeFrom: t to: tt.
			interaction setUpElement: l.
			aView add: l.
			t := tt ]