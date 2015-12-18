visitor
visitDiamondShape: diamondShape
	"Looks like to be broken"
	| aid color bColor w s |
	aid := self getDecorationId: diamondShape.
	color := diamondShape color.
	bColor := diamondShape strokePaint.
	w := diamondShape width.
	s := diamondShape mySize.
