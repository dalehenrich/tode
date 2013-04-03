oop access
floatToSmallDouble: aFloat

	| floatBits efBits exp11Bits exp8Bits fBits sign smallDouble smallDouble1 |
	floatBits := ((aFloat basicAt: 1) << 32) bitOr: (aFloat basicAt: 2).
	efBits := (floatBits << 1) bitAnd: 16rFFFFFFFFFFFFFFFF.
	exp11Bits := efBits >> 53.
	exp8Bits := exp11Bits - 16r380. "SMALL_DOUBLE_EXPONENT_BASE"
	fBits := (floatBits << 12) bitAnd: 16rFFFFFFFFFFFFFFFF.
	(exp8Bits > 16rFF) " SMALL_DOUBLE_MAX_EXP"
		ifTrue: [
			(efBits == 0)
				ifTrue: [exp8Bits := 0]
				ifFalse: [self error: 'Float out of range']]
		ifFalse: [
			(exp8Bits bitOr: fBits) == 0 ifTrue: [self error: 'Float out of range']].
	sign := floatBits >> 63.
	smallDouble1 := fBits >> 8.
	smallDouble := smallDouble1 bitOr: ((sign << 3) bitOr: ((exp8Bits << 56) bitOr: 2r110)). "OOP_TAG_SMALLDOUBLE"
	^self oopTypeClass fromInteger: smallDouble