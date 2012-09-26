Wrapper
localForSpecial: anOopType

	| number classNumber |
	anOopType = self oopNil ifTrue: [^nil].
	number := anOopType asOop.
	(number bitAnd: 2r111) = 2r010 ifTrue: [			"SmallInteger"
		^number <= self oopMaxSmallInteger asOop
			ifTrue: [number >> 3]
			ifFalse: [number >> 3 - (self oopMaxSmallInteger asOop >> 2 + 2)].
	].
	(number bitAnd: 2r111) = 2r110 ifTrue: [			"SmallDouble"
		^self floatFromOop: number.
	].
	(number bitAnd: 2r111) = 2r100 ifFalse: [			"illegal tag"
		self error: 'Unknown object tag: ', (number bitAnd: 2r111) printString.
	].
	"true,false, nil, Char, JISCHar"
	classNumber := number >> 3 bitAnd: 2r11111.
	number := number >> 8.
	classNumber = 1 ifTrue: [^number = 1].		"Boolean"
	classNumber = 2 ifTrue: [^nil].				"UndefinedObject"
	classNumber = 3 ifTrue: [^Character value: number].		"Character"
	anOopType = self oopRemoteNil ifTrue: [
		self halt.
		^nil.
	].
	self halt.
