as yet unclassified
topezServer
	topezServer
		ifNil: [ 
			topezServer := TDTopezPharoServer new
				topezClient: self;
				yourself ].
	^ topezServer