adding
addColor: aColor object: anObject text: aBlockOrSelector
	"Associate a color with a text"
	| g |
	g := RTGroup new.
	g add: (RTBox new size: 10; color: aColor) element.
	g add: ((RTLabel text: aBlockOrSelector) elementOn: anObject).
	RTHorizontalLineLayout new alignCenter; on: g.
	group add: g.
	^ g