adding
addLineColor: aColor text: aText
	"Associate a color with a text"
	| g |
	g := RTGroup new.
	g add: (RTBox new height: 3; width: 10; color: aColor) element.
	g add: (RTLabel elementOn: aText).
	RTHorizontalLineLayout new alignCenter; on: g.
	group add: g.