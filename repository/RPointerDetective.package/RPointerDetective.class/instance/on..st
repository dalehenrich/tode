as yet unclassified
on: firstObject
"This method is used for Pharo objects"
	|firstNode|
	firstNode := self nodeFor: firstObject.
	firstNode isTarget: true.
	self colorConditions.
	self setLabels.
	builder node: firstNode.
	builder build.
	legendBuilder build.
	builder view.
