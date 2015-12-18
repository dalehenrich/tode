basic tests
testIncludesPoint	
	self assert: (arc1 includesPoint: p1).
	self deny: (arc1 includesPoint: p2).
	self assert: (arc1 includesPoint: p3).
	self deny: (arc1 includesPoint: p4).
	self assert: (arc1 includesPoint: p5).	
	self assert: (arc1 includesPoint: p6).
	self assert: (arc1 includesPoint: p7).
	self deny: (arc1 includesPoint: p8).
	self assert: (arc1 includesPoint: p1n).
	self deny: (arc1 includesPoint: p2n).
	self assert: (arc1 includesPoint: p3n).
	self deny: (arc1 includesPoint: p4n).
	self assert: (arc1 includesPoint: p5n).	
	self assert: (arc1 includesPoint: p6n).
	self assert: (arc1 includesPoint: p7n).
	self deny: (arc1 includesPoint: p8n).
	
	self deny: (arc2 includesPoint: p1).
	self deny: (arc2 includesPoint: p2).
	self deny: (arc2 includesPoint: p3).
	self deny: (arc2 includesPoint: p4).
	self deny: (arc2 includesPoint: p5).	
	self deny: (arc2 includesPoint: p6).
	self deny: (arc2 includesPoint: p7).
	self deny: (arc2 includesPoint: p8).
	self deny: (arc2 includesPoint: p1n).
	self deny: (arc2 includesPoint: p2n).
	self deny: (arc2 includesPoint: p3n).
	self deny: (arc2 includesPoint: p4n).
	self deny: (arc2 includesPoint: p5n).	
	self deny: (arc2 includesPoint: p6n).
	self deny: (arc2 includesPoint: p7n).
	self deny: (arc2 includesPoint: p8n).
	
	self deny: (arc3 includesPoint: p1).
	self deny: (arc3 includesPoint: p2).
	self deny: (arc3 includesPoint: p3).
	self deny: (arc3 includesPoint: p4).
	self assert: (arc3 includesPoint: p5).
	self deny: (arc3 includesPoint: p6).
	self deny: (arc3 includesPoint: p7).
	self deny: (arc3 includesPoint: p8).
	self deny: (arc3 includesPoint: p1n).
	self deny: (arc3 includesPoint: p2n).
	self deny: (arc3 includesPoint: p3n).
	self deny: (arc3 includesPoint: p4n).
	self deny: (arc3 includesPoint: p5n).
	self deny: (arc3 includesPoint: p6n).
	self deny: (arc3 includesPoint: p7n).
	self deny: (arc3 includesPoint: p8n).
	
	self deny: (arc4 includesPoint: p1).
	self deny: (arc4 includesPoint: p2).
	self deny: (arc4 includesPoint: p3).
	self assert: (arc4 includesPoint: p4).
	self deny: (arc4 includesPoint: p5).	
	self deny: (arc4 includesPoint: p6).
	self assert:(arc4 includesPoint: p7).
	self assert:(arc4 includesPoint: p8).
	self deny: (arc4 includesPoint: p1n).
	self deny: (arc4 includesPoint: p2n).
	self deny: (arc4 includesPoint: p3n).
	self deny: (arc4 includesPoint: p4n).
	self deny: (arc4 includesPoint: p5n).	
	self assert: (arc4 includesPoint: p6n).
	self deny: (arc4 includesPoint: p7n).
	self deny: (arc4 includesPoint: p8n).
	
	self deny: (arc5 includesPoint: p1).
	self deny: (arc5 includesPoint: p2).
	self deny: (arc5 includesPoint: p3).
	self assert: (arc5 includesPoint: p4).
	self deny: (arc5 includesPoint: p5).	
	self assert:(arc5 includesPoint: p6).
	self assert:(arc5 includesPoint: p7).
	self assert:(arc5 includesPoint: p8).
	self deny: (arc5 includesPoint: p1n).
	self assert: (arc5 includesPoint: p2n).
	self assert: (arc5 includesPoint: p3n).
	self assert: (arc5 includesPoint: p4n).
	self deny: (arc5 includesPoint: p5n).	
	self assert: (arc5 includesPoint: p6n).
	self assert: (arc5 includesPoint: p7n).
	self assert: (arc5 includesPoint: p8n).
	
	self assert:(arcQ1 includesPoint: pR).
	self deny:(arcQ1 includesPoint: pQ1).
	self deny:(arcQ1 includesPoint: pB).
	self deny:(arcQ1 includesPoint: pQ2).
	self deny:(arcQ1 includesPoint: pL).
	self deny:(arcQ1 includesPoint: pQ3).
	self assert:(arcQ1 includesPoint: pT).
	self assert: (arcQ1 includesPoint: pQ4).
	
	self deny:(arcQ2 includesPoint: pR).
	self deny:(arcQ2 includesPoint: pQ1).
	self deny:(arcQ2 includesPoint: pB).
	self deny:(arcQ2 includesPoint: pQ2).
	self assert:(arcQ2 includesPoint: pL).
	self assert:(arcQ2 includesPoint: pQ3).
	self assert:(arcQ2 includesPoint: pT).
	self deny:(arcQ2 includesPoint: pQ4).
	
	self deny:(arcQ3 includesPoint: pR).
	self deny:(arcQ3 includesPoint: pQ1).
	self assert:(arcQ3 includesPoint: pB).
	self assert:(arcQ3 includesPoint: pQ2).
	self assert:(arcQ3 includesPoint: pL).
	self deny: (arcQ3 includesPoint: pQ3).
	self deny:(arcQ3 includesPoint: pT).
	self deny:(arcQ3 includesPoint: pQ4).
	
	self assert:(arcQ4 includesPoint: pR).
	self assert:(arcQ4 includesPoint: pQ1).
	self assert:(arcQ4 includesPoint: pB).
	self deny:(arcQ4 includesPoint: pQ2).
	self deny:(arcQ4 includesPoint: pL).
	self deny:(arcQ4 includesPoint: pQ3).
	self deny:(arcQ4 includesPoint: pT).
	self deny:(arcQ4 includesPoint: pQ4).
