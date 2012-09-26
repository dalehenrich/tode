Public
localForStringOop: aString

	^self library localFor: (self library oopTypeFromInteger: aString asNumber).
