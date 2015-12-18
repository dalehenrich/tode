tags
tag: aString with: contentString
	stream nextPutAll: '<';
		nextPutAll: aString;
		nextPutAll: '>';
		nextPutAll: contentString;
		nextPutAll: '</';
		nextPutAll: aString;
		nextPutAll: '>';
		cr.