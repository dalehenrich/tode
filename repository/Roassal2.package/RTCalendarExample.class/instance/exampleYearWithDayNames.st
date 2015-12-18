sources
exampleYearWithDayNames

| b |
b := RTCalendarBuilder new.
b dateShape composite: [ :com | 
	com add: (RTEllipse new color: [ :d | 
		d = Date today
			ifTrue: [ Color blue alpha: 0.2 ]
			ifFalse: [Color transparent] ]; size: 18).
	com add: (RTLabel new text: [:d| d dayOfMonth];
		color: [:d | (d weekdayIndex = 1) 
			ifTrue: [Color red] 
			ifFalse: [ Color black ] ]) ].

b showDayNames.
b yearShape composite: [ :comp | 
	comp add: (RTLabel new text: [ :d | d year ]; height: 20 ).
	comp add: (RTBox new color: [ Color blue alpha: 0.1 ]). ] .
b dates: Year current.
b build.
^ b view

