initialization
getNewPopupFor: element
	| popup |
	popup := self createPopupFor: element.
	element view add: popup.
	popup trachelShape setAsFixed.
	^ popup trachelShape signalUpdate