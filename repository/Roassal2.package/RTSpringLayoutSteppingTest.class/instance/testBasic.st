tests
testBasic

	| l |
	l := RTSpringLayoutStepping new.
	self deny: l hasCompleted.
	