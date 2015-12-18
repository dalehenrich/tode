accessing
offsetOf: aTrachelShape
	^ (shapeAndOffsets detect: [ :shapeAndOffset | shapeAndOffset first == aTrachelShape ]) second