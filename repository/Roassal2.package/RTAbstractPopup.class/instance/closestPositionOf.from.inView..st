utility
closestPositionOf: popup from: position inView: aView
	"Return the closest position for el to realPosition to be entierely visible in the view"
	"position is the location in the space"

	| idealVirtualPosition virtualPositionX virtualPositionY winSize |
	idealVirtualPosition := position.
	
	winSize := aView canvas extent.
	"Happens if we are in a test"
	winSize ifNil: [ winSize := 500 @ 500 ].
	
	"If the popup is larger than the window, then there is not much we can do"
	(popup width > winSize x or: [ popup height > winSize y ]) 
		ifTrue: [ ^ idealVirtualPosition + self popupOffset ].
	
	"Check if the element is within the width of the view"
	virtualPositionX := 
		((idealVirtualPosition x + popup width + self popupOffset x) < winSize x) 
			ifTrue: [ idealVirtualPosition x + self popupOffset x ]
			ifFalse: [ idealVirtualPosition x - popup width - self popupOffset x ].
	(aView canvas camera fromSpaceToPixel: virtualPositionX @ 0) x < 0
		ifTrue: [ virtualPositionX := idealVirtualPosition x + self popupOffset x   ].

	virtualPositionY := 
		((idealVirtualPosition y + popup height + self popupOffset y) < winSize y) 
			ifTrue: [ idealVirtualPosition y + self popupOffset y ]
			ifFalse: [ idealVirtualPosition y - popup height - self popupOffset y ].

"	(aView canvas camera fromSpaceToPixel: 0 @ virtualPositionY) y < 0
		ifTrue: [ virtualPositionY := idealVirtualPosition y + self popupOffset y ].
"	
	^ virtualPositionX @ virtualPositionY