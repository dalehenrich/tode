tests
testExamples
	RTTextBuilderExamples selectors do: [ :eachSelector |
		(RTTextBuilderExamples new perform: eachSelector) delete.
	]