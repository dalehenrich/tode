sources
exampleYearShape

| b |
b := RTCalendarBuilder new.
b dateShape if: [ :date | date weekdayIndex = 1 ] color: Color red.
b yearShape composite: [ :comp | 
	comp add: (RTLabel new text: [ :d | d year ]; height: 20 ).
	comp add: (RTBox new color: [:d | 
		(d year % 2 = 0) 
			ifTrue: [Color lightGray alpha: 0.2] 
			ifFalse: [ Color lightGreen alpha: 0.2 ]]). ] .
b dates: (Year current to: Year current next).

b build.
^ b view


