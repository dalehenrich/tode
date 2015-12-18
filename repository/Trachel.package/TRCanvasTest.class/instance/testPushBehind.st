rendering list
testPushBehind
	| box1 box2 box3 |
	box1 := TRBoxShape new.
	box2 := TRBoxShape new.
	box3 := TRBoxShape new.
	canvas addShape: box1; addShape: box2; addShape: box3.
	self assert: canvas shapes asArray = (Array with: box1 with: box2 with: box3).

	canvas push: box1 behind: box2.
	self assert: canvas shapes asArray = (Array with: box1 with: box2 with: box3).
	
	canvas push: box3 behind: box2.
	self assert: canvas shapes asArray = (Array with: box1 with: box3 with: box2).
