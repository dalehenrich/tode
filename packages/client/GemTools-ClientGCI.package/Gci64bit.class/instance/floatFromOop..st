oop access
floatFromOop: oopArg
	"convert GemStone SmallDouble into Squeak Float"
	
	| efBits sign newFloat result expBits |
	efBits := oopArg >> 4. "(OOP_NUM_TAG_BITS + 1)"
	sign := oopArg bitAnd: 16r8.
	result := 0.
	(efBits == 0)
		ifTrue: [^0.0].
	expBits := oopArg >> 56.
	result := (oopArg << 8) >> 12. "isolate f bits"
	expBits := expBits + 16r380. "SMALL_DOUBLE_EXPONENT_BASE"
	result := result bitOr: (expBits << 52).
	result := result bitOr: (sign << 60).
	newFloat := Float new: 2.
	newFloat basicAt: 1 put: (result >> 32).
	newFloat basicAt: 2 put: (result bitAnd: 16rFFFFFFFF).
	^newFloat