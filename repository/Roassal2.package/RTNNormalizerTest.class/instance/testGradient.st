linear
testGradient
	| normalizer |

	normalizer := RTNColorLinearNormalizer inContext: #(0 1 2 3 4 5 6 7 8 9 10) lowColor: Color yellow highColor: Color red.
	self assert: (normalizer maximumValue: nil) = 10.
	self assert: (normalizer rtValue: 10) =  (Color r: 1.0 g: 0.0 b: 0.0). 
	self assert: (normalizer rtValue: 1) = (Color r: 1.0 g: 0.900012 b: 0.0).
	self assert: (normalizer rtValue: 0) =  (Color r: 1.0 g: 1.0 b: 0.0)