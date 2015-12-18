as yet unclassified
notifyWith: anElement
	"Update the scroll bar and add the callback"
	self notify.
	anElement addCallback: (TRTranslationCallback new block: [ self encompassingRectangleUpdate. self encompassingRectangleFromSpaceToPixelUpdate. self signalUpdate.]).
	
	
	