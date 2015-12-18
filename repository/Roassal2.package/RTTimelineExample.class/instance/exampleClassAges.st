sources
exampleClassAges

	| data b s |
	data := (RTShape withAllSubclasses sortedAs: #ageInDaysRounded) select: #hasMethods.

	b := RTTimeline new.
	b extent: 400 @ 600.
	s := RTTimelineSet new.
	s objects: data.
	s start: [ :cls | cls computeYoungestMethod ageInDays ].
	s end: [ :cls | cls computeOldestMethod ageInDays ].
	b add: s.
	
b build.
^ b view