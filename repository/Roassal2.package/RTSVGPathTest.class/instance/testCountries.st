test countries
testCountries

	self assert: ((RTSVGPath countries collect: [ :k | RTSVGPath perform: k ]) allSatisfy: #isString)
	