rendering
updateFor: edge trachelShape: trachelShape
	trachelShape resetPath. 
	trachelShape strokePaint: (self colorFor: edge).
	trachelShape borderWidth: (self widthFor: edge).
	trachelShape path: (self getSVGPath: edge).
	trachelShape strokePaint: (self colorFor: edge).
	trachelShape fillColor:(Color white alpha: 0).
