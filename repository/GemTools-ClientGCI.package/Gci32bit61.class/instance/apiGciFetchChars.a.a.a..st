API
apiGciFetchChars: anOopType a: startIndex a: cString a: maxSize

	<apicall: long 'GciFetchChars' (OopType32 long void* long) >
	^self externalCallFailed