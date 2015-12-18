sources
exampleDateOnXAxis
 	| methods oldestMethod b ds |
	methods := RTObject withAllSubclasses flatCollect: #rtmethods.
	methods := methods reject: [ :m | m numberOfLinesOfCode > 150 ].
	oldestMethod := methods minFor: #date.

	b := RTGrapher new.
	b extent: 300 @ 200.

	ds := RTDataSet new.
	ds dotShape circle size: 5; color: (Color blue alpha: 0.1).
	ds interaction popup.
	ds points: methods.
	ds y: #numberOfLinesOfCode.
	ds x: [ :m | m date julianDayNumber - oldestMethod date julianDayNumber ].
	b add: ds. 

	b axisY 
		noDecimal;
		title: 'LOC'.
	
	b axisX 
		title: '';
		labelRotation: -30;
		labelConversion: [ :v | (Date julianDayNumber: v + oldestMethod date julianDayNumber) ].

	b build.
	^ b view