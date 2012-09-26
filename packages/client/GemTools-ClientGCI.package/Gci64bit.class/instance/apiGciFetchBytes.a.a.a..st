API
apiGciFetchBytes: anOopType a: startIndex a: byteArray a: maxSize

	<apicall: ulonglong 'GciFetchBytes_' (OopType64 ulonglong void* ulonglong) >
	^self externalCallFailed