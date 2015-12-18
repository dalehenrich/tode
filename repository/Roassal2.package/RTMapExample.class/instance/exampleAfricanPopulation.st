sources
exampleAfricanPopulation

	| b countries cn sum|
	b := RTMapBuilder new.	
		
	countries := RTMapBuilder countriesPopulation select: [ :c | RTSVGPath africa includes: (c at: 1) ].
	sum := (countries collect: [ :c | c at: 2 ])inject: 0 into: [ :acc :n | acc + n ].
	
	cn := RTNColorLinearNormalizer
		inContext: (countries collect: [:c | c at: 2])
		lowColor: (Color r:0.8 g:0.8 b:1)
		highColor: (Color r:0 g:0 b:0.3).
	
	b countries: countries named: [ :c | c at: 1 ].
	b color: [ :c | cn rtValue: (c at: 2) ].
	b withPopup: [ :c |
		(c at: 1) asString, ': ',
		(((c at: 2) / sum * 100 asFloat roundTo: 0.01) printString), '%'].
	b scale: 2.
	b build.
	^ b view