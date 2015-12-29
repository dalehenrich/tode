as yet unclassified
on: firstObject
|firstNode|
"This method is used for Gemstone server objects"
	self assert: ( shell isNotNil ).
"This method is used for Pharo objects"
	firstNode := self nodeFor: firstObject.
	firstNode isTarget: true.
	self colorConditions.
	self setLabels.
	builder node: firstNode.
	builder build.
	builder view.
