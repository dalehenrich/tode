rendering
updateFor: edge trachelShape: trachelShape
	trachelShape from: (attachPoint startingPointOf: edge) to: (attachPoint endingPointOf: edge).
	trachelShape color: (self colorFor: edge).
	trachelShape width: (self widthFor: edge).
	trachelShape resetPath
