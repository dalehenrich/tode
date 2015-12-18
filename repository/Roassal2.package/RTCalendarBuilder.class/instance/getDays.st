accessing - computed
getDays
	| timespan days current limit |
	timespan := self dateSelector rtValue: self dates.
	
	(timespan isKindOf: OrderedCollection) ifTrue: [ ^ timespan asSortedCollection ].
	
	days := OrderedCollection new.
	current := timespan start asDate.
	limit := timespan end asDate.
	
	[ current <= limit ] whileTrue: [ 
		days add: current.
		current := current next ].
	
	^ days