customizing
depthShadedBorder
	| normalizer |
	normalizer := RTNColorLinearNormalizer 
		inContext: self elements 
		withCommand: [ :e | e attributes at: #depth ] 
		lowColor: Color gray
		highColor: Color white darker.
	self elements do: [ :e | e trachelShape strokePaint: (normalizer rtValue: e) ].