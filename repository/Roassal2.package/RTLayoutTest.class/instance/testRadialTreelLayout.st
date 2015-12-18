tests
testRadialTreelLayout

	| answer  |
	 
	RTEdge buildEdgesFromObjects: (1 to: 20) from: [ :v | v // 2 ] to: #yourself inView: view.	
	RTRadialTreeLayout on: view elements edges: view edges.

	answer := OrderedCollection new.
	answer add: (202@202);
		add: (216@217);
		add: (187@215);
		add: (239@217);
		add: (213@240);
		add: (184@238);
		add: (165@216);
		add: (262@208);
		add: (250@239);
		add: (226@257);
		add: (212@261);
		add: (182@259);
		add: (169@252);
		add: (149@230);
		add: (144@216);
		add: (282@202);
		add: (281@217);
		add: (270@245);
		add: (261@257);
		add: (234@275).
		
	self assert: ((view elements collect: #position) collect: #asIntegerPoint) asArray = answer asArray