initialization
createAndShowPopupFor: element event: event
	| popupPosition popup idealPosition |
	self removeLastPopup.
	
	popup := self getNewPopupFor: element.
	self lastPopup: popup.
	
	"The following is useful when testing"
	event position isNil
		ifTrue: [ idealPosition := element position ]
		ifFalse: [ idealPosition := event position ].
	popupPosition := self closestPositionOf: popup from: idealPosition inView: element view.
	popup translateTo: popupPosition.	
