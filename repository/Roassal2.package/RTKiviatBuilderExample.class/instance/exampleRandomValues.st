sources
exampleRandomValues
	| b  |
	b := RTKiviatBuilder new.
	b objects: (Array with: ('object1' -> ((1 to: 25) collect: [:i | i atRandom])) with: ('object2' -> ((1 to: 25) collect: [:i | i atRandom]))).
	
	b shapes: ((Array with: Color blue with: Color red) do: [:c | c alpha: 0.3]).

	(1 to: 25) doWithIndex: [ :ei :i |
		b addMetric: [:e | e value atWrap: i]
	].
	b build.
	^ b view