basic tests
testEncompassingRectangle
	self assert: (arc1 encompassingRectangle = ((-100.0@ -100.0) corner: (100.0@100.0))).
	self assert: (arc1 encompassingRectangle width abs = 200).
	self assert:(arc2 encompassingRectangle width abs < 50).  
	self assert:(arc2 encompassingRectangle height abs < 50).
	self assert: (arc3 encompassingRectangle height abs= 2 sqrt).
	self assert: (((arc4 encompassingRectangle height abs) roundDownTo: 1 )= 150). 
	self assert: (((arc4 encompassingRectangle width abs) roundDownTo: 1 )= 150). 
	self assert: (arc5 encompassingRectangle width abs= 300).
	self assert: (arc5 encompassingRectangle height abs= 300).