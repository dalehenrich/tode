multiple
testMultipleLinearNormalizer
	| normalizer |

	normalizer := RTMultipleColorLinearNormalizer 
					valueRange: #(5 10 15) colorRange: (Array with: Color blue with: Color white with: Color red) .
	
	self assert: (normalizer rtValue: 5) =  (Color r: 0.0 g: 0.0 b: 1.0).
	self assert: (normalizer rtValue: 6) =  (Color r: 0.2 g: 0.2 b: 1.0). 
	self assert: (normalizer rtValue: 15) = (Color r: 1.0 g: 0.0 b: 0.0)