tests
testCities
	|stgo brasilia saopaulo|
	stgo := #('Santiago' 6027000).
	brasilia := #('Brasilia' 2481000).
	saopaulo := #('Sao Paulo' 19889559).
	
	builder countries: #('Chile' 'Brazil').
	builder cities: (Array with:stgo with: brasilia with: saopaulo) named: [ :c | c at: 1 ].
	
	builder renderIn: builder view.
	
	self assert: builder view numberOfElements = 5.
	self assert: builder view elements third model = stgo.
	self assert: builder view elements fourth model = brasilia.
	self assert: builder view elements fifth model = saopaulo.