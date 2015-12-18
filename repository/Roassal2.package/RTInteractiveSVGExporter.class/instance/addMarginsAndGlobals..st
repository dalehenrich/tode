svg
addMarginsAndGlobals: bounds
	| notChecked |
	notChecked := true.
	self interactions
		do: [ :l | 
			l
				do: [ :i | 
					i type = 'popup'
						ifTrue: [ 
							i bounds: bounds.
							marginX := marginX max: i xBound.
							marginY := marginY max: i yBound ].
					((i type beginsWith: 'button') and: [ notChecked ])
						ifTrue: [ 
							| val |
							val := (TRLabelShape new
								text: i getName;
								encompassingRectangle) height.
							paddingY := paddingY max: val.
							notChecked := false ].
					(globals includes: i class)
						ifFalse: [ 
							i addGlobalHandlers: stream.
							globals add: i class ] ] ].