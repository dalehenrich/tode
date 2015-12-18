accessing
weightOf: e
	(e attributes includesKey: #weight)
		ifTrue: [ ^ e attributes at: #weight ]
		ifFalse: [ | w |
			w := self weight rtValue: e model.
			w isNumber ifFalse: [ w := 1 ].
			e attributes at:#weight put: w.
			^ w ]
	 