testing
isPointOverTheBuilder: p
	| pp |
	pp := self convertPointForGraph: p.
	^ pp >= (0 @ 0) and: [ pp <= builder extent ]