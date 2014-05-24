printing
printOn: aStream
	aStream
		nextPutAll: self class name asString;
		cr;
		tab;
		nextPutAll: 'windowOrigin: ' , windowOrigin printString;
		cr;
		tab;
		nextPutAll: 'listWindowWidth: ' , listWindowWidth printString;
		cr;
		tab;
		nextPutAll: 'codeWindowHeight: ' , codeWindowHeight printString;
		cr;
		tab;
		nextPutAll: 'codeWindowWidth: ' , codeWindowWidth printString;
		cr;
		tab;
		nextPutAll: 'shellWindowHeight: ' , shellWindowHeight printString;
		cr;
		tab;
		nextPutAll: 'debuggerWindowWidth: ' , debuggerWindowWidth printString;
		yourself