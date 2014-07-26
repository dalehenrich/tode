evaluator engine
evaluateSmalltalk: aString
	^ self topezClient evaluateServerSmalltalk: aString batchMode: self batchMode 