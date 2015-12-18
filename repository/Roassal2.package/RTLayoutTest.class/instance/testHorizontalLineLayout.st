tests
testHorizontalLineLayout

	| answer |
	RTHorizontalLineLayout on: view elements.
	answer := (((Array new: 20) at: 1 put: (((5/2)@(5/2))); at: 2 put: (((35/2)@(5/2))); at: 3 put: (((65/2)@(5/2))); at: 4 put: (((95/2)@(5/2))); at: 5 put: (((125/2)@(5/2))); at: 6 put: (((155/2)@(5/2))); at: 7 put: (((185/2)@(5/2))); at: 8 put: (((215/2)@(5/2))); at: 9 put: (((245/2)@(5/2))); at: 10 put: (((275/2)@(5/2))); at: 11 put: (((305/2)@(5/2))); at: 12 put: (((335/2)@(5/2))); at: 13 put: (((365/2)@(5/2))); at: 14 put: (((395/2)@(5/2))); at: 15 put: (((425/2)@(5/2))); at: 16 put: (((455/2)@(5/2))); at: 17 put: (((485/2)@(5/2))); at: 18 put: (((515/2)@(5/2))); at: 19 put: (((545/2)@(5/2))); at: 20 put: (((575/2)@(5/2))); yourself)).
	self assert: (view elements collect: #position) asArray = answer
	