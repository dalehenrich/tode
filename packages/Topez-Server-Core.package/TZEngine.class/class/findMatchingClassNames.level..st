metacello
findMatchingClassNames: aString level: level

	| regex classList classNames |
	regex := RxParser preferredMatcherClass for: (RxParser new parse: aString) ignoreCase: true.
	classNames := ((SystemNavigation default allClasses asArray select: [ :cls | regex search: cls name asString ])
		collect: [ :each | each name asString ]) sort.
	^self toString: classNames level: level