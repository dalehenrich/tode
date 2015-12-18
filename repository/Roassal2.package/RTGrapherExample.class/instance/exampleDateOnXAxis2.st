sources
exampleDateOnXAxis2
 

| dates minDate b ds |
dates := Array with: Date today with: Date yesterday with: Date yesterday previous.
minDate := dates min.

b := RTGrapher new.
b extent: 300 @ 200.

ds := RTDataSet new.
ds interaction popup.
ds dotShape rectangle color: Color blue.
ds points: dates.
ds x: [ :aDate | aDate julianDayNumber - minDate julianDayNumber ].
ds y: [ :d | d dayOfWeek \\ 7 ].
b add: ds.

b axisX 
	labelRotation: -30;
	labelConversion: [ :v | (Date julianDayNumber: v + minDate julianDayNumber) ].  
b build.
^ b view