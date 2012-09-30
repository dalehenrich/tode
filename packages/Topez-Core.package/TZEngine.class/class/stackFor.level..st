debugging
stackFor: aGsProcess level: level

	| stack stream writer |
	stack := Array new.
	1 to: aGsProcess stackDepth do: [:frameIndex |
		stack add: (TZStackFrame from: (aGsProcess _frameContentsAt: frameIndex))].
	^self toString: stack level: level