tests
testCountries
	| chile france |
	chile := #('Chile').
	france := #('France').

	builder countries: (Array with: chile with: france) named: [ :c | c at: 1 ].
	builder renderIn: builder view.
	self assert: builder view numberOfElements = 2.
	
	self assert: builder view elements first model == chile.
	self assert: builder view elements second model == france.