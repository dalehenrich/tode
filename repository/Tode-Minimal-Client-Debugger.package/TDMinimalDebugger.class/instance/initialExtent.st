protocol
initialExtent
	"This code was taken from the standard debugger to get the same behavior. Fell free to refactor"

	RealEstateAgent standardWindowExtent y < 400
		ifTrue: [ ^ 700 @ 500 ].	"a tiny screen"
	^ [ | w h |
	w := Display width.
	h := Display height.
	(w - (17 * w // 32)) @ (h - (h // 5)) ]
		on: Error
		do: [ 850 @ 600 ]