as yet unclassified
gradientColorShape
	| diff  gradientColorArray |

	diff := (colorArray second alpha - colorArray first alpha).
	gradientColorArray := Array with: (colorArray first).

	(2 to: (precision - 1)) do: [ :i | gradientColorArray := gradientColorArray copyWith: ((self getColorAtStep: i) alpha: ( (colorArray first) alpha + ((i - 1) * diff / (precision - 1)) )) ]. 

	gradientColorArray := gradientColorArray copyWith: (colorArray last).
	colorArray := gradientColorArray.
	
	self colorShape.