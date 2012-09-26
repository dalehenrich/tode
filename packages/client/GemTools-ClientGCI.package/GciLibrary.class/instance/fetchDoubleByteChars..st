Wrapper
fetchDoubleByteChars: anOopType

	| bytes size result |
	size := self apiGciFetchSize: anOopType.
	bytes := ByteArray new: size.
	result := self 
		apiGciFetchBytes: anOopType
		a: 1
		a: bytes
		a: bytes size.
	result ~= size ifTrue: [self error: 'GciFetchBytes() failed'].
	^WideString streamContents: [:s |
		1 to: bytes size by: 2 do: [:i | | codePoint |
			codePoint := ((bytes at: i) << 8) bitOr: (bytes at: i + 1).
			s nextPut: (Character value: codePoint)]]
