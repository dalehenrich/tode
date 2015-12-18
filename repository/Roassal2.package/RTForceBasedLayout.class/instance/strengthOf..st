algorithm
strengthOf: anEdge

	^ strengths at: anEdge ifAbsent: [ ^ strength ] 