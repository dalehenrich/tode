as yet unclassified
translation: evt
	| tx ty |
	
		tx := ((evt step x) / (self size  - self shapes bar width)) * ((self encompassingRectangleFromSpaceToPixel width) / self view canvas camera scale).
	ty := ((evt step y) / (self size  - self shapes bar height)) * ((self encompassingRectangleFromSpaceToPixel height) / self view canvas camera scale).
	
	^ tx@ty