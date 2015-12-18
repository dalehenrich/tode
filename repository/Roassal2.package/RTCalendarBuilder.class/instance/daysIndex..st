accessing - computed
daysIndex: aCollection
	^ (aCollection collect: [ :d | d weekdayIndex ]) asSet asSortedCollection.