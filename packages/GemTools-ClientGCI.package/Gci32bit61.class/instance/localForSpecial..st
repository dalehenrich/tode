Wrapper
localForSpecial: anOopType

	anOopType = self oopNil ifTrue: [^nil].
	(anOopType asOop bitAnd: 16r3) = 16r3 ifTrue: [			"SmallInteger"
		| value |
		value := anOopType asOop.
		^value <= self oopMaxSmallInteger asOop
			ifTrue: [value // 4]
			ifFalse: [value // 4  - (self oopMaxSmallInteger asOop // 4 * 2 + 2)].
	].
	(anOopType asOop bitAnd: (16rFFFFE000 bitOr: 16r1F)) = 16r0E ifTrue: [	"Character"
		^self apiGciOopToChr: anOopType.
	].
	(anOopType asOop bitAnd: 16r1F) = 16r06 ifTrue: [		"Boolean"
		^anOopType = self oopTrue.
	].
	anOopType = self oopRemoteNil ifTrue: [
		self halt.
		^nil.
	].
	self halt.
