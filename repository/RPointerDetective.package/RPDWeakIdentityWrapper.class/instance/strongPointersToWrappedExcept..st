as yet unclassified
strongPointersToWrappedExcept: anArray

	self wrappedObject 
		ifNil: [ ^ {}  ]  "Weakly wrapped object may have been garbage collected"
		ifNotNil: [
			| pointers |
					pointers := (self wrappedObject pointersTo select: [ :fromObject | 
					"Transcript crShow: fromObject printString , '==>'."
						(	(fromObject isNil) "transcriptShow"
						| (fromObject class isWeak) "transcriptShow"
						| (anArray identityIncludes: fromObject) "transcriptShow"
						| ((fromObject class name asString truncateTo: 2) = 'IR') "transcriptShow"
						| ((fromObject class name asString truncateTo: 2) = 'OC') "transcriptShow"
						| ((fromObject printString truncateTo: 5) = 'Undef') "transcriptShow"
						| (fromObject isContext) "transcriptShow"
						"| (fromObject isKindOf: RBLiteralValueNode)" "Uncomment that if you want"
						| (fromObject class = IndexedEyeElement )		
						) not "transcriptShow" 
						]).
					pointers size > 10 ifTrue: [
						| size |  
							size := self popChoice: pointers size.
							pointers := pointers first: size.
					].
					^ pointers.
				].