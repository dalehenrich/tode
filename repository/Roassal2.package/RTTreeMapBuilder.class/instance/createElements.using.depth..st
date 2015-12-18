private
createElements: atree using: ablock depth: depth
	| children e |
	
	e := ((shapeBuilder elementOn: atree)@RTDraggable @ popup).
	self elements add: e.
	
	children := ablock rtValue: atree.
	e attributes at: #depth put: depth.
	children := children collect: [ :child | | e2 |
		e2 := self createElements: child using: ablock depth: depth + 1.
		e2 attributes at: #parent put: e.
		e2 ].
	children ifNotNil: [e attributes at: #elements put: children].
	
	^ e.