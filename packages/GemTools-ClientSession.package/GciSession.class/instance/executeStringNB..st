Library
executeStringNB: aString

	"| result ans time |
	time := Time millisecondsToRun: ["
		| ans result |
		self setSession.
		self library
			apiGciNbExecuteStr: aString
			a: self library oopNil.
		result := self getNbResultAsOop.
		ans := self library localFor: result.
	"].
	ObjectLog add: #executeNB->{aString. time}."
	^ans
