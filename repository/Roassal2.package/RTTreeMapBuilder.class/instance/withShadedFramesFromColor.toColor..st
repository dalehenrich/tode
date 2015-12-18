customizing
withShadedFramesFromColor: fromColor toColor: toColor

	| normalizer |
	
	normalizer := RTNColorLinearNormalizer 
		inContext: self elements 
		withCommand: [ :e | self weight rtValue: e model ] 
		lowColor: fromColor highColor: toColor.
	self elements do: [ :e | e trachelShape strokePaint: (normalizer rtValue: e ) ].