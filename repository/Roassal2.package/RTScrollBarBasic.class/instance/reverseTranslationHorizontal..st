as yet unclassified
reverseTranslationHorizontal: evt
	| t |

	t := ((evt step x)  / (self encompassingRectangleFromSpaceToPixel width )) * (self size - self shapes bar width).
		
	^ (t negated)@0