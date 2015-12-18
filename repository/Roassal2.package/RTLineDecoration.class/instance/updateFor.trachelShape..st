hooks
updateFor: edge trachelShape: trachelShape
	| f |
	f := (attachPoint startingPointOf: edge).
	(line ~= nil)
		ifTrue: [ | tShape |
			tShape := edge trachelShape shapes first.
			tShape class = TRBezierShape 
				ifTrue: [	f := tShape points allButLast last ] ].
	trachelShape from: f.
	trachelShape to: (attachPoint endingPointOf: edge).
	trachelShape color: (self colorFor: edge).
	trachelShape width: (self widthFor: edge).
	trachelShape resetPath.
