evaluator engine
evaluateSTONSmalltalk: smalltalkSource variableBindings: variableBindings
	^ self topezClient evaluateSTONSmalltalk: smalltalkSource variableBindings: variableBindings batchMode: self batchMode