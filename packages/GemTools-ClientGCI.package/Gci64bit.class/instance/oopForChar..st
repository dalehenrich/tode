oop access
oopForChar: aCharacter
    ^ (aCharacter asciiValue bitAnd: 16rFFFF) << 16r08 bitOr: 16r1C