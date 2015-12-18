adding
addColoredObject: anObject text: aTextOrSymbolOrBlock color: aColor
	group add: (RTGroup new add: 
					((RTLabel new color: aColor; text: aTextOrSymbolOrBlock) elementOn: anObject); yourself)