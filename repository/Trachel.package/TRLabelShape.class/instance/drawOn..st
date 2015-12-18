drawing
drawOn: athensCanvas
	"self drawEncompassingRectangleOn: athensCanvas."
	athensCanvas pathTransform restoreAfter: [
		"Draw the label centered on the position"
		athensCanvas pathTransform
			multiplyBy: matrix asFloatTransform;
			translateBy: ((self textWidth / -2) @ (self textHeight / 2)) asFloatPoint;
			translateBy: (0 @ self descent negated) asFloatPoint.
		athensCanvas setFont: font.
		athensCanvas setPaint: color.
		athensCanvas drawString: text
	]