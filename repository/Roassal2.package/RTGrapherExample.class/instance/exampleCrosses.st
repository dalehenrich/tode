sources
exampleCrosses
 

| b ds |
b := RTGrapher new.
b extent: 300 @ 300.

ds := RTDataSet new.
ds dotShape cross color: (Color red alpha: 0.3).
ds points: (RTShape withAllSubclasses flatCollect: #rtmethods).
ds x: #numberOfLinesOfCode.
ds y: [ :m | m getSource size ].
b add: ds.

b axisX.
b axisY.
b build.
^ b view