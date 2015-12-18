rendering list
testPushBehindWithGroup
	| box1 box2 box3 g |
	box1 := TRBoxShape new.
	box2 := TRBoxShape new.
	box3 := TRBoxShape new.
	canvas addShape: box1; addShape: box2; addShape: box3.
	self assert: canvas shapes asArray = (Array with: box1 with: box2 with: box3).

	g := Array with: box2 with: box3.
	canvas push: box1 behindAll: g.
	self assert: canvas shapes asArray = (Array with: box1 with: box2 with: box3).
	
	g := Array with: box2 with: box3.
	canvas push: box1 behindAll: g.
	self assert: canvas shapes asArray = (Array with: box1 with: box2 with: box3).
	self assert: (canvas shapes indexOf: box1) = 1.
	self assert: (canvas shapes indexOf: box2) = 2.
	self assert: (canvas shapes indexOf: box3) = 3.