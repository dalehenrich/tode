action
evolveAt: index through: timePeriod
	evolutionPeriod := timePeriod.
	mapBuilder cityObjects do: [ :c |
		|evolver|
		evolver := RTDataEvolver new.
		evolver dataSequence: (c at: index).
		evolver stepGiver: self.
		c at: index put: evolver.
	].