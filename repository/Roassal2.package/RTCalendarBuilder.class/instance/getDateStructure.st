accessing - computed
getDateStructure
	| aDates firstDay currentMonth currentYear days months years |
	aDates := self getDays."All the dates".
	
	firstDay := aDates first.
	currentMonth := firstDay asMonth.
	currentYear := currentMonth asYear.
	
	years := OrderedCollection new.
	months := OrderedCollection new.
	days := OrderedCollection new.
	
	days add: firstDay.
	months add: currentMonth->days.
	years add: currentYear->months.
	aDates allButFirstDo: [ :date | | temp |
		temp := date asYear.
		temp = currentYear 
			ifFalse: [ 
				currentYear := temp.
				months := OrderedCollection new.
				years add: currentYear->months. ].
		temp := date asMonth.
		temp = currentMonth 
			ifTrue: [ days add: date ]
			ifFalse: [ 
				currentMonth := temp.
				days := OrderedCollection new.
				days add: date.
				months add: currentMonth->days ]
		].
	
	^ years