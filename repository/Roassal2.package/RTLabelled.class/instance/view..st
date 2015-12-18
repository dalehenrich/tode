accessing
view: aBlockOrValue
	"aBlock is evaluated against the element to get the canvas"
	canvas := [ :el | (aBlockOrValue rtValue: el) canvas ]