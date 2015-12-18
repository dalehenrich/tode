hook
translateTopLeftOf: element to: newPosition
	"Translate the top left corner of the element"
	self translate: element to: (newPosition + (element extent / 2))