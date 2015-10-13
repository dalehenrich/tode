evaluator engine
accumulateText: line
	| actionArray stream block |
	(line isNil or: [ line beginsWith: '%' ])
		ifFalse: [ 
			inputStream
				nextPutAll: line;
				cr.
			^ '' ].
	block := self actionStack removeFirst.
	actionArray := self stateStack removeFirst.
	stream := inputStream.
	promptString := actionArray at: 2.
	inputStream := actionArray at: 1.
	^ (block value: stream) convertTDEvaluateTokenResponseToText: self objectSerializer