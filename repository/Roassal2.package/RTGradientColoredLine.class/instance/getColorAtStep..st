accessing
getColorAtStep: anInteger

	^ Color fromRgbTriplet: (Array with:
	((colorArray first red * (1 - ((1 / precision) * anInteger))) + (colorArray second red * (1 / precision) * anInteger)) with:
	 ((colorArray first green * (1 - ((1 / precision) * anInteger))) + (colorArray second green * (1 / precision) * anInteger)) with:
	((colorArray first blue * (1 - ((1 / precision) * anInteger))) + (colorArray second blue * (1 / precision) * anInteger))
	)
