tests
testRoutes
	builder countries: #('Chile' 'Brazil').
	builder cities: #('Santiago' 'Brasilia' 'Sao Paulo').
	builder routes from: 'Santiago' toAll: #('Brasilia' 'Sao Paulo').
	builder routes from: 'Sao Paulo' toAll: #('Brasilia').
	builder renderIn: builder view.
	
	self assert: builder view numberOfEdges = 3.
	self assert: builder view edges first from model = 'Santiago'.
	self assert: builder view edges last from model = 'Sao Paulo'.