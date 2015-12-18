public normalize color
distinctColor
	| normalizer |
	normalizer := RTMultiLinearColorForIdentity new objects: elements.
	elements do: [ :el | el trachelShape color: (normalizer rtValue: el) ]