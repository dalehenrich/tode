Wrapper
fetchQuadByteChars: anOopType
	| bytes size result |
	size := self apiGciFetchSize: anOopType.
	bytes := ByteArray new: size.
	result := self
		apiGciFetchBytes: anOopType
		a: 1
		a: bytes
		a: bytes size.
	result ~= size
		ifTrue: [ self error: 'GciFetchBytes() failed' ].
	^ WideString
		streamContents: [ :s | 
			1 to: bytes size by: 4 do: [ :i | 
				| codePoint |
				codePoint := (bytes at: i)
					bitOr: ((bytes at: i + 1) << 8 bitOr: ((bytes at: i + 2) << 16 bitOr: (bytes at: i + 3) << 24)).
				s nextPut: (Character value: codePoint) ] ]