printing
printOn: aStream
	aStream
		nextPutAll: self class name asString;
		space;
		nextPutAll: 'new';
		cr;
		tab;
		nextPutAll: 'yourself.'