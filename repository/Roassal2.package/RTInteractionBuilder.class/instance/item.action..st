public
item: aTitle action: aBlockOrSymbol
	interactions add: [ :element | element @ (RTMenuActivable new item: aTitle asString action: [ aBlockOrSymbol rtValue: element model ]) ]