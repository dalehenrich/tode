rendering
updateFor: edge trachelShape: trachelShape
	trachelShape resetPath. 
	trachelShape strokePaint: (self colorFor: edge).
	trachelShape width: (self widthFor: edge).
	trachelShape points: (self getListOfPointsForTrachel: edge).
	trachelShape strokePaint: (self colorFor: edge).
