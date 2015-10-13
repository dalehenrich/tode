evaluator engine
evaluateSTONSmalltalk: aString
	^ self topezClient evaluateSTONSmalltalk: aString batchMode: self batchMode 