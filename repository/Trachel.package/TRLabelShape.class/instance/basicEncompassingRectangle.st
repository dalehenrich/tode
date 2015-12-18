private
basicEncompassingRectangle
	| w h |
	w := self textWidth.
	h := self textHeight.
	^ ((w / -2) @ (h / -2)) extent: (w @ h)