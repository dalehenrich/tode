debugging
stackFor: aGsProcess level: level

	| stack stream writer |
	stack := Array new.
	1 to: aGsProcess stackDepth do: [:frameIndex |
		stack add: (aGsProcess _frameContentsAt: frameIndex)].
	stream := WriteStream on: String new.
	writer := (self writer on: stream) 
			options:(TZTopezOptions new
                		level: level;
                		yourself).
	(TZProxyStack new body: stack) stonOn: writer.
	^stream contents