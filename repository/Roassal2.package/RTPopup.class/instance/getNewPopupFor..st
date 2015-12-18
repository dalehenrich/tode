initialization
getNewPopupFor: element
	| popupGroup |
	popupGroup := self createPopupFor: element.
	popupGroup do: [ :e | element view add: e. e trachelShape setAsFixed ].
	element trachelShape signalUpdate.
	^ popupGroup