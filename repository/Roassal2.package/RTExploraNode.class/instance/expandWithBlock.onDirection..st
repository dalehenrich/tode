adding
expandWithBlock: aBlock onDirection: aDirection
	^ expansion at: aDirection key put: (aBlock value: self element model)