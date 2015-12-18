tests
testMaxValueIfNotSet02
	config maxValueIfNotSet: 5.
	config maxValueIfNotSet: 10.
	config maxValueIfNotSet: 2.
	self assert: config maxValue equals: 10