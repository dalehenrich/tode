*tode-pharo-server-core
displayOnPolicy: displayPolicy
	| string aStream limit displayOops compacted |
	aStream := displayPolicy stream.
	limit := displayPolicy characterLimit.
	displayOops := displayPolicy displayOops.
	compacted := displayPolicy compacted.
	displayPolicy minimal
		ifFalse: [ 
			aStream nextPutAll: '['.
			aStream
				nextPutAll: (Text string: self class name asString attribute: TextEmphasis bold);
				nextPutAll: ']';
				space ].
	string := [ 
	limit > 0
		ifTrue: [ self printString truncate: limit ]
		ifFalse: [ self printString ] ]
		on: Error
		do: [ :ignored | 'error printing' ].
	compacted
		ifTrue: [ string := string withSeparatorsCompacted ].
	aStream nextPutAll: (Text string: string attribute: (TextColor color: Color blue))