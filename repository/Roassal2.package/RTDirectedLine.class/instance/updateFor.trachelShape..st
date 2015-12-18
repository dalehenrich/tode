rendering
updateFor: edge trachelShape: trachelShape
	trachelShape points: (self pointsFrom: (attachPoint startingPointOf: edge) To: (attachPoint endingPointOf: edge)).
	trachelShape color: (self colorFor: edge).
	trachelShape width: (self widthFor: edge).
	trachelShape resetPath
