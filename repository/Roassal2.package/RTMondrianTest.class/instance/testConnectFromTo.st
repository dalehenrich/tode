tests - edges
testConnectFromTo

	b := RTMondrian new.
	b nodes: #(1 2).
	b edges allowRepetition; connectFrom: 1 to: 2.

	b build.
	
	"We have two edges because of the repetition"
	self assert: b view numberOfEdges equals: 2