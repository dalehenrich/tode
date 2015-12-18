population
africanPopulation

	^ RTMapBuilder countriesPopulation select: [ :c | RTSVGPath africa includes: (c at: 1) ].