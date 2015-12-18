hooks
renderIn: aView
	| dateStructure years |
	
	dateStructure := self getDateStructure.
	years := OrderedCollection new.
	dateStructure do: [ :asso1 | 
		| year months |
		year := yearShape elementOn: asso1 key.
		view add: year.
		years add: year.
		
		months := RTGroup new.
		asso1 value do: [ :asso2 | 
			| month days dayLabels | 
			month := monthShape elementOn: asso2 key.
			view add: month.
			months add: month.
			dayLabels := dayLabelShape elementsOn: (self daysIndex: asso2 value).
			days := dateShape elementsOn: asso2 value.
			view addAll: days.
			
			(dayLabels first extent = (0.0@0.0)) ifTrue: [ 
				dateLayout layout on: days.
				RTNest new on: month nest: days.
			] ifFalse: [ 
				view addAll: dayLabels.
				dateLayout layout on: dayLabels, days.
				RTNest new on: month nest: dayLabels,days. ].
			dateInteraction setUpElements: days.
			 ]. 
		monthLayout layout on: months.
		RTNest new on: year nest: months.
		monthInteraction setUpElements: months. ].
	yearLayout layout on: years.
	yearInteraction setUpElements: years.

	
	