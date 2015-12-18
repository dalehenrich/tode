as yet unclassified
reverseTranslationVertical: evt
	| t |

	t := ((evt step y)  / (self encompassingRectangleFromSpaceToPixel height)) * (self size - self shapes bar height).
		
	^ 0@(t negated)