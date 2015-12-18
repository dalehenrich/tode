back and front
testBack

	| s1 s2 s3 |
	s1 := TRBoxShape new size: 10.
	s2 := TRBoxShape new size: 10.
	s3 := TRBoxShape new size: 10.
	canvas addShape: s1; addShape: s2; addShape: s3.
	
	s1 pushBack.
	self assert: canvas shapes = (Array with: s1 with: s2 with: s3).
	
	s3 pushBack.
	self assert: canvas shapes = (Array with: s3 with: s1 with: s2).