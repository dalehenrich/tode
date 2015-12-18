*roassal2
hasAnyMethodProducedAfterDay: aNumberOfDays
	^ self methods anySatisfy: [ :cm | cm livingInDays = aNumberOfDays ]
