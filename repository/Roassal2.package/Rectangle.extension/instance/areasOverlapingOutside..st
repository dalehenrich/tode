*Roassal2-Core
areasOverlapingOutside: aRectangle 
	"Answer an Array of maximized Rectangles comprising (overlaped by each other) the parts of the receiver not 
	intersecting aRectangle."
	"Make sure the intersection is non-empty"
	| areas |
	(self intersects: aRectangle) ifFalse: [ ^ Array with: self ].
	areas := OrderedCollection new.
	aRectangle origin y > origin y 
		ifTrue: 
			[ areas addLast: (origin corner: corner x @ aRectangle origin y) ].
	aRectangle corner y < corner y 
		ifTrue: 
			[ areas addLast: (origin x @ aRectangle corner y corner: corner) ].
	aRectangle origin x > origin x 
		ifTrue: 
			[ areas addLast: (origin corner: aRectangle origin x @ corner y) ].
	aRectangle corner x < corner x 
		ifTrue: 
			[ areas addLast: (aRectangle corner x @ origin y corner: corner) ].
	^ areas