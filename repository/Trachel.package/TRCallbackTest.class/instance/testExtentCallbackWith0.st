tests
testExtentCallbackWith0

	| s callback |
	s := TRBoxShape new size: 0.
	callback := TRExtentCallback new shape: s newExtent: 5 @ 5 oldExtent: 0 @ 0.
	