button effect
changeFunction
	| attr |
	attr := self targetColorAttribute.
	^'if (elements[e].style != null)
		elements[e].style["',attr,'"]'