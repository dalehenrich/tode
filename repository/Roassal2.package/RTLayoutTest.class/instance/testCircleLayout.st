tests
testCircleLayout

	| answer |
	RTCircleLayout on: view elements.
	answer :=  OrderedCollection new.
	answer add: (442@222);
		add: (431@290);
		add: (400@351);
		add: (351@400);
		add: (290@431);
		add: (222@442);
		add: (154@431);
		add: (93@400);
		add: (44@351);
		add: (13@290);
		add: (2@222);
		add: (13@154);
		add: (44@93);
		add: (93@44);
		add: (154@13);
		add: (222@2);
		add: (290@13);
		add: (351@44);
		add: (400@93);
		add: (431@154).
	self assert: ((view elements collect: #position) collect: #asIntegerPoint) asArray = answer asArray
	