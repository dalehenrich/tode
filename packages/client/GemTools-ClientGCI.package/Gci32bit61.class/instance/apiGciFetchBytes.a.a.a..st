API
apiGciFetchBytes: anOopType a: startIndex a: byteArray a: maxSize

	<apicall: long 'GciFetchBytes' (OopType32 long void* long) >
	^self externalCallFailed