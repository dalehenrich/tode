Wrapper
oopFor: anObject

	anObject isNil ifTrue: [^self oopNil asOop].
	(anObject isKindOf: OopType) ifTrue: [^anObject asOop].
	(anObject isKindOf: Integer) ifTrue: [^(self apiGciLongToOop: anObject) asOop].
	(anObject isKindOf: ByteString) ifTrue: [^(self apiGciNewString: anObject) asOop].
	(anObject isKindOf: GsObject) ifTrue: [^anObject asOopType asOop].
	(anObject isKindOf: GsOBBrowser) ifTrue: [^anObject asOopType asOop].
	(anObject isKindOf: Boolean) ifTrue: [ ^(anObject ifTrue: [ self oopTrue ] ifFalse: [ self oopFalse ]) asOop].
	(anObject isKindOf: Character) ifTrue: [ ^(self oopForChar: anObject) asOop ].
	(anObject isKindOf: ByteSymbol) ifTrue: [^(self apiGciNewSymbol: anObject asString) asOop].
	(anObject isKindOf: Float) ifTrue: [^(self floatToSmallDouble: anObject) asOop].
	(anObject isKindOf: WideString) ifTrue: [^self oopForWideString: anObject].
	(anObject isKindOf: WideSymbol) ifTrue: [^self oopForWideSymbol: anObject].
	self error: 'Unrecognized object type'.
