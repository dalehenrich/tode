Wrapper
fetchDoubleByteChars: anOopType
	| littleEndianBytes size result |
	size := self apiGciFetchSize: anOopType.
	littleEndianBytes := ByteArray new: size.
	result := self
		apiGciFetchBytes: anOopType
		a: 1
		a: littleEndianBytes
		a: littleEndianBytes size.
	result ~= size
		ifTrue: [ self error: 'GciFetchBytes() failed' ].
	^ WideString
		streamContents: [ :s | 
			1 to: littleEndianBytes size by: 2 do: [ :i | 
				| codePoint |
				codePoint := (littleEndianBytes at: i) bitOr: (littleEndianBytes at: i + 1) << 8.
				s nextPut: (Character value: codePoint) ] ]