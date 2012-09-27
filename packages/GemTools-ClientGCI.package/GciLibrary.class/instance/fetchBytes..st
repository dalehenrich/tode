Wrapper
fetchBytes: anOopType

	| bytes size result |
	size := self apiGciFetchSize: anOopType.
	bytes := ByteArray new: size.
	result := self 
		apiGciFetchBytes: anOopType
		a: 1
		a: bytes
		a: bytes size.
	result ~= size ifTrue: [self error: 'GciFetchBytes() failed'].
	^bytes.
