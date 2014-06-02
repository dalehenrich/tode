printing
printOn: aStream
	aStream
		nextPutAll: self class name asString;
		space;
		nextPutAll: 'new';
		cr;
		tab;
		nextPutAll: 'margin: ' , self margin printString , ';';
		cr;
		tab;
		nextPutAll: 'codeWidthFactor: ' , self codeWidthFactor printString , ';';
		cr;
		tab;
		nextPutAll: 'extraLists: ' , self extraLists printString , ';';
		cr;
		tab;
		nextPutAll: 'shellHeightFactor: ' , self shellHeightFactor printString , ';';
		cr;
		tab;
		nextPutAll: 'topHeightFactor: ' , self topHeightFactor printString , ';';
		cr;
		tab;
		nextPutAll: 'yourself.'