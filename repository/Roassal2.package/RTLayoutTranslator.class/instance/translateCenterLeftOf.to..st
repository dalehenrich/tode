hook
translateCenterLeftOf: element to: newPosition
	"Translate the left center of the element to newPosition"
	self translate: element to: (newPosition + ((element width / 2) @ 0)).