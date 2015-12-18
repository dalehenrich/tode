tests
testTreeLayoutWithoutSpecificingEdges

	| v answer |
	v := RTView new.
	v addAll: (RTBox elementsOn: (1 to: 20)).
	RTEdge buildEdgesFromObjects: (1 to: 20) from: [ :value | value // 2 ] to: #yourself inView: v.
	RTTreeLayout on: v elements.
	
	answer := OrderedCollection new.
	answer add: (43.5@(15/2));
		add: (27.5@(65/2));
		add: (67.5@(65/2));
		add: (19.5@(115/2));
		add: (43.5@(115/2));
		add: (59.5@(115/2));
		add: (75.5@(115/2));
		add: (11.5@(165/2));
		add: (27.5@(165/2));
		add: (39.5@(165/2));
		add: (47.5@(165/2));
		add: (55.5@(165/2));
		add: (63.5@(165/2));
		add: (71.5@(165/2));
		add: (79.5@(165/2));
		add: (7.5@(215/2));
		add: (15.5@(215/2));
		add: (23.5@(215/2));
		add: (31.5@(215/2));
		add: (39.5@(215/2)).
	self assert: (v elements collect: #position) asArray equals: answer asArray.