hook
translateBottomLeftOf: element to: newPosition
	"Translate the bottom left corner of the element to the newPosition"
	self translate: element to: (newPosition + ((element width / 2) @ (element height / -2))).