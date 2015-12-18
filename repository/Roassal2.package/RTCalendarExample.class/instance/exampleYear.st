sources
exampleYear

| b |
b := RTCalendarBuilder new.
b dateShape if: [ :date | date weekdayIndex = 1 ] color: Color red.
b dates: Year current.
b build.
^ b view

