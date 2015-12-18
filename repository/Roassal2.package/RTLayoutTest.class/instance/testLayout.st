tests
testLayout
	| result elements |
	elements := (RTBox new size: 50) elementsOn: (1 to: 20).
	view := RTView new.
	view addAll: elements.
	elements allButFirst do: [:e | 
	 	view add: (RTLine edgeFrom: elements first to: e) ].
	
	RTSugiyamaLayout on: elements.
	
	result := ((Array new: 20) at: 1 put: ((497.0@3.0)); at: 2 put: ((974.0@73.0)); at: 3 put: ((921.0@73.0)); at: 4 put: ((868.0@73.0)); at: 5 put: ((815.0@73.0)); at: 6 put: ((762.0@73.0)); at: 7 put: ((709.0@73.0)); at: 8 put: ((656.0@73.0)); at: 9 put: ((603.0@73.0)); at: 10 put: ((550.0@73.0)); at: 11 put: ((497.0@73.0)); at: 12 put: ((444.0@73.0)); at: 13 put: ((391.0@73.0)); at: 14 put: ((338.0@73.0)); at: 15 put: ((285.0@73.0)); at: 16 put: ((232.0@73.0)); at: 17 put: ((179.0@73.0)); at: 18 put: ((126.0@73.0)); at: 19 put: ((73.0@73.0)); at: 20 put: ((20.0@73.0)); yourself).
	self assert: (result includesAll: (elements collect: #position))