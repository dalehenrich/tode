Wrapper
localForBytes: anOopType

	| class |
	class := self apiGciFetchClass: anOopType.
	class = self oopClassString ifTrue: [^self fetchChars: anOopType].
	class = self oopClassUnicode7 ifTrue: [^self fetchChars: anOopType].
	class = self oopClassSymbol ifTrue: [^(self fetchChars: anOopType) asSymbol].
	class = self oopClassDoubleByteString ifTrue: [^self fetchDoubleByteChars: anOopType].
	class = self oopClassUnicode16 ifTrue: [^self fetchDoubleByteChars: anOopType].
	class = self oopClassDoubleByteSymbol ifTrue: [^(self fetchDoubleByteChars: anOopType) asSymbol].
	class = self oopClassQuadByteString ifTrue: [^self fetchQuadByteChars: anOopType].
	class = self oopClassUnicode32 ifTrue: [^self fetchQuadByteChars: anOopType].
	^self fetchBytes: anOopType.
