public
annotatedFrequencyMin: numberMin max: numberMax amountOfIntervals: nbOfIntervals
	"Return a list of elements, each following the template:
	{ c1 . c2 . elements that are between c1 and c2 }
	{ c2 . c3 . elements that are between c2 and c3 }
	...
	
	We have c1 <= c2 <= c3 <= ...
	c1 = numberMin
	cN = numberMax
	N = nbOfIntervals
	 "

	| interval running tmp result |
	interval := ((numberMax + 1 - numberMin) / nbOfIntervals).
	running := numberMin.
	
	tmp := numbers copy.
	result := OrderedCollection new.
	[ running asFloat < numberMax ] whileTrue: [ 
		| c |
		c := tmp select: [ :v | v >= running and: [ v < (running + interval) ]].
		result add: (Array with: running with: interval + running with: c asArray).
		tmp := tmp copyWithoutAll: c.
		running := running + interval ].
	
	^ result asArray
	