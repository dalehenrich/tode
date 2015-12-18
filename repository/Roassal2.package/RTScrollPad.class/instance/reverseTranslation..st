as yet unclassified
reverseTranslation: evt
	| tx ty |


	tx:= ((evt step x)  / (self encompassingRectangleFromSpaceToPixel width )) * (self size - self shapes bar width).
	
	ty := ((evt step y)  / (self encompassingRectangleFromSpaceToPixel height)) * (self size - self shapes bar height).
	
	^ (tx negated)@(ty negated)