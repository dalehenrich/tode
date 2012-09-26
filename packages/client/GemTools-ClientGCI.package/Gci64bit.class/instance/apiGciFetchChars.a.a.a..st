API
apiGciFetchChars: anOopType a: startIndex a: cString a: maxSize

	<apicall: ulonglong 'GciFetchChars_' (OopType64 ulonglong void* ulonglong) >
	^self externalCallFailed