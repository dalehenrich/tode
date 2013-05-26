private
readSmtpResult
	| result firstChar |
	[self readWillNotBlockWithin: 5000]
		whileFalse: [GsFile stderr log: 'Waiting for server to write...'].
	result := self readString: 500.
	result isEmpty
		ifTrue: 
			[self log: 'Empty result'.
			^false].
	firstChar := result at: 1.
	^(firstChar == $2 or: [firstChar == $3])
		ifTrue: [^true]
		ifFalse: 
			[self log: (result copyFrom: 1 to: (result size min: 100)).
			^false]