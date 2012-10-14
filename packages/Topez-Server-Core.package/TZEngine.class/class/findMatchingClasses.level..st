metacello
findMatchingClasses: aString level: level

	| regex classList classes |
	regex := RxParser preferredMatcherClass for: (RxParser new parse: aString) ignoreCase: true.
	classes := TZClassElement
        hierarchyForClasses: ((SystemNavigation default allClasses asArray select: [ :cls | regex search: cls name asString ])
		 sort: [:a :b | a name <= b name ]).
	^self toString: classes level: level