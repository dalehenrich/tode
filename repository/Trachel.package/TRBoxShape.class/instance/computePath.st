private
computePath
	canvas ifNil: [ ^ self ].
	path := self athensCanvas
		createPath: [ :builder | 
			builder
				absolute;
				moveTo: rectangle topLeft;
				lineTo: rectangle topRight;
				lineTo: rectangle bottomRight;
				lineTo: rectangle bottomLeft;
				lineTo: rectangle topLeft;
				closePath ]