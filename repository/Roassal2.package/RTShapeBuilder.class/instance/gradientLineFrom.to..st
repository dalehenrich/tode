shape - edges
gradientLineFrom: fromColor to: toColor
	^ self shape: (RTGradientColoredLine new colors: (Array with: fromColor with: toColor); 
							precision: 100; 
							gradientColorShape)