initialize-release
valueRange: anArrayOfNumbers colorRange: anArrayOfColors
	" {1. 2. 3} {Color red. Color yellow. Color green}"
	
	| size start end |
	normalizers := Dictionary new.
	self assert: anArrayOfNumbers size = anArrayOfColors size.
	size := anArrayOfNumbers size.
	1 to: size - 1 do: [ :i |
		start := anArrayOfNumbers at: i.
		end :=  anArrayOfNumbers at: i + 1.
		normalizers
			at: (start to: end)
			put: (RTNColorLinearNormalizer
						inContext: (Array with: start with: end)
						lowColor: (anArrayOfColors at: i)
						highColor: (anArrayOfColors at: i + 1))
	].
