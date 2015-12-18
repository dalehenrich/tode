as yet unclassified
translationVertical: evt
	| t |

	t := ((evt step y) / (self size  - self shapes bar height)) * ((self encompassingRectangleFromSpaceToPixel height) / self view canvas camera scale).
	
	^ 0@t