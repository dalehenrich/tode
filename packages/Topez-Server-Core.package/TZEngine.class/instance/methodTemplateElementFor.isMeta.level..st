metacello
methodTemplateElementFor: aClass isMeta: isMeta  level: level
    | element |
	element := self methodTemplateElementFor: aClass isMeta: isMeta.
	^ self toString: element level: level