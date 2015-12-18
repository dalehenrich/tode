hooks
createShapeBuilder
	"RTBox new color: (Color red alpha: 0.5); width: 15; height: 20"
	^ super createShapeBuilder
		rectangle;
		color: (Color red alpha: 0.5);
		width: 15;
		height: 20;
		yourself