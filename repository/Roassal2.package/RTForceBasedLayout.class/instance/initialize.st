initialize-release
initialize
	super initialize.
	nbIterations := 0.
	edges := #().
	nodes := #().
	initialLayout := self defaultInitialLayout.
	fixedNodes := Dictionary new.
	strengths := Dictionary new.
	lengths := Dictionary new.
	charges := Dictionary new.
	strength := 1.
	length := 20.
	charge := -30.
	gravity := 0.1.
	friction := 0.9.
	theta := 0.8.
	center := 200 @ 200.
	alpha := 0.1.
	self useProgressBar