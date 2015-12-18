public
frequencyMin: numberMin max: numberMax amountOfIntervals: nbOfIntervals

	| interval running tmp result |
	interval := ((numberMax + 1 - numberMin) / nbOfIntervals).
	running := numberMin.
	
	tmp := numbers copy.
	result := OrderedCollection new.
	[ running asFloat < numberMax ] whileTrue: [ 
		| c |
		c := tmp select: [ :v | v >= running and: [ v < (running + interval) ]].
		result add: c asArray.
		tmp := tmp copyWithoutAll: c.
		running := running + interval ].
	
	^ result asArray
	