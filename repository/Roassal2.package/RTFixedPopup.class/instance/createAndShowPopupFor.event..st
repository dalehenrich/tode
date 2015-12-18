initialization
createAndShowPopupFor: element event: event
	| popup windowSize |
	self removeLastPopup.
	
	popup := self getNewPopupFor: element.
	self lastPopup: popup.
	
	
	windowSize := element view canvas extent.
	popup translateTo: ((popup width / 2) @ (windowSize y - (popup height / 2)))
	"TRConstraint moveAtTheBottomOfTheWindow: popup"