private
translatedRectangle
	^ (matrix transform: self rectangle origin) corner: (matrix transform: self rectangle corner)