tests - edges
testConnectFromToNoRepetition

	b := RTMondrian new.
	b nodes: #(1 2).
	b edges noRepetition; connectFrom: 1 to: 2.

	b build.
	
	"We have two edges because of the repetition"
	self assert: b view numberOfEdges equals: 1