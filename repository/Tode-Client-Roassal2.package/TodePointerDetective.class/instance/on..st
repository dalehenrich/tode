initialization
on: initialNodes
	self colorConditions.
	self setLabels.
	initialNodes do: [ :each | builder node: each ].
	builder build.
	builder view
