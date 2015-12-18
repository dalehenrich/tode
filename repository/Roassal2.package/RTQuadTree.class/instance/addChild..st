adding
addChild: aNode


	| sx sy new |
	
	sx := (origin x + corner x) / 2.
	sy := (origin y + corner y) / 2.
	
	leaf := false.

	aNode position x < sx ifTrue: [ aNode position y < sy ifTrue: [ (nodes at: 1) isNil ifTrue: [ new := RTQuadTree new.
																								new origin: origin;
																									corner: sx@sy.
																								nodes at: 1 put: new ] .
																	(nodes at: 1) add: aNode ]
															ifFalse: [ (nodes at: 3) isNil ifTrue: [ new := RTQuadTree new.
																								new origin: origin x @ sy;
																									corner: sx @ corner y.
																								nodes at: 3 put: new ] .
																	(nodes at: 3) add: aNode ] ]
	 
						    ifFalse: [ aNode position y < sy ifTrue: [  (nodes at: 2) isNil ifTrue: [ new := RTQuadTree new.
																								new origin: sx @ origin y;
																									corner: corner x @ sy.
																								nodes at: 2 put: new ] .
																	(nodes at: 2) add: aNode ] 
															ifFalse: [ (nodes at: 4) isNil ifTrue: [ new := RTQuadTree new.
																								new origin: sx @ sy;
																									corner: corner.
																								nodes at: 4 put: new ] .
																	(nodes at: 4) add: aNode ] ] 