testing visibility
isVisible: aShape
	"Return true if aShape is fully or partially visible. I.e., the encompassing bounds of aShape intersects of the of the canvas "
	| rec ext |
	rec := aShape encompassingRectangle.
	rec := self fromSpaceToPixelForRectangle: rec.
	ext := self canvas extent.
	^ (0 @ 0 extent: ext) intersects: rec
	
"	| p pOnScreen ext |
	p := aShape position.
	pOnScreen := self fromSpaceToPixel: p.
	ext := self canvas extent.
	^ (0 @ 0 extent: ext) intersects: pOnScreen"