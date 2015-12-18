hooks
computePath
	path := (self athensCanvas createPath: [ :builder |
			builder absolute.
			curves do: [ :c |
				c key = 'm' ifTrue: [ builder moveTo: (c value at: 1) ].
				c key = 'l' ifTrue: [ builder lineTo: (c value at: 1) ].
				c key = 'c' ifTrue: [ builder curveVia: (c value at: 2) and: (c value at: 3) to: (c value at: 1) ].
				c key = 'q' ifTrue: [ builder curveVia: (c value at: 2) to: (c value at: 1) ]. ]
		])