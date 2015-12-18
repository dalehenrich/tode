tags
tag: aString do: aBlock
	stream
		nextPutAll: '<';
		nextPutAll: aString;
		nextPutAll: '>';
		cr.
		
	aBlock value.
	stream
		nextPutAll: '</';
		nextPutAll: aString;
		nextPutAll: '>';
		cr.
		