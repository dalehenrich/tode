drawing
drawOn: athensCanvas
	"self drawEncompassingRectangleOn: athensCanvas color: (Color green alpha: 0.1)."
	athensCanvas pathTransform restoreAfter: [
		"Draw the label centered on the position"
		athensCanvas pathTransform 
			translateBy: self position asIntegerPoint;
			rotateByDegrees: angle value;
			translateBy: ((self notRotatedWidth value / -2) @ (self notRotatedHeight value / 2)) asIntegerPoint;
			translateBy: (0 @ font descent negated) asIntegerPoint.
		athensCanvas setFont: font.
		athensCanvas setPaint: color.
		athensCanvas drawString: text
	].