rendering list
testPushAllBehindWithGroup
	| box1 box2 box3 g |
	box1 := TRBoxShape new.
	box2 := TRBoxShape new.
	box3 := TRBoxShape new.
	canvas addShape: box1; addShape: box2; addShape: box3.
	self assert: canvas shapes asArray = (Array with: box1 with: box2 with: box3).

	g := Array with: box2 with: box3.
	canvas pushAll: (Array with: box1) behindAll: g.
	self assert: canvas shapes asArray = (Array with: box1 with: box2 with: box3).
	
	g := Array with: box2 with: box3.
	canvas pushAll: (Array with: box1) behindAll: g.
	self assert: canvas shapes asArray = (Array with: box1 with: box2 with: box3).

	g := Array with: box1.
	canvas pushAll: (Array with: box3 with: box2) behindAll: g.
	self assert: canvas shapes asArray = (Array with: box3 with: box2 with: box1).
