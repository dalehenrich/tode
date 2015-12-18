private-accessing
detectNormalizerFor: aValue

	normalizers keysAndValuesDo: [:range :norm |
		(range rangeIncludes: aValue)
			ifTrue: [^ norm] ].
	self error: aValue asString, ' not in declared ranges'