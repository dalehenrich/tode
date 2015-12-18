public - pies
slice: aBlockOrASymbol
	| es |
	values := objects collect: aBlockOrASymbol.
	sum := values sum.
	es := self elementsOn: objects.
	view addAll: es.
	^ es