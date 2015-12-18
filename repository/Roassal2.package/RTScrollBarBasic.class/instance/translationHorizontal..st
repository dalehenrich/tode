as yet unclassified
translationHorizontal: evt
	| t |

	t := ((evt step x) / (self size  - self shapes bar width)) * ((self encompassingRectangleFromSpaceToPixel width) / self view canvas camera scale).
	
	^ t@0