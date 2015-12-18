util
highlight: aBlockOrValue color: aColor
	shapeBuilder
		if: [ :v | aBlockOrValue value: v first value: v second ] fillColor: aColor.
