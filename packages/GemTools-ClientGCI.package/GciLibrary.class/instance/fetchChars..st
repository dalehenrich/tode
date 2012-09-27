Wrapper
fetchChars: anOopType

	| string size result |  
	size := self apiGciFetchSize: anOopType.
	string := String new: size + 1.
	result := self 
		apiGciFetchChars: anOopType
		a: 1
		a: string
		a: string size.
	result ~= size ifTrue: [self error: 'GciFetchChars() failed'].
	^string copyFrom: 1 to: size.
