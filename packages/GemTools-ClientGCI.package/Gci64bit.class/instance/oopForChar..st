oop access
oopForChar: aCharacter

	| ans |
	ans := (((aCharacter asciiValue bitAnd: 16rFFFF) << 16r08) bitOr: 16r1C) asOop.
	^ans