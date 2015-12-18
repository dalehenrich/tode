utlity
getTableForPackage: packageName
	"
	self new getTableForPackage: 'Trachel'
	"
	
	| s classes |
	classes := ((TRPlatform current packageNamed: packageName) classes collect: #baseClass) asSet.
	s := WriteStream on: String new.
	classes do: [ :c |
		s nextPutAll: c name.
		s nextPut: Character tab.
		s nextPutAll: c numberOfMethods printString.
		s nextPut: Character tab.
		s nextPutAll: c numberOfVariables printString.
		s nextPut: Character tab.
		s nextPutAll: c numberOfLinesOfCode printString.
		s nextPut: Character tab.
		s cr.
		].
	^ s contents