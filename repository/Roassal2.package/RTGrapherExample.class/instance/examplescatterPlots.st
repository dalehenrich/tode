sources
examplescatterPlots

| methodsRoassal methodsTrachel greatestAge b ds | 
methodsRoassal := RTObject withAllSubclasses flatCollect: #rtmethods.
methodsTrachel := TRObject withAllSubclasses flatCollect: #rtmethods.

methodsRoassal := methodsRoassal select: [ :m | m numberOfLinesOfCode < 300 ].
methodsTrachel := methodsTrachel select: [ :m | m numberOfLinesOfCode < 300 ].

greatestAge := (methodsTrachel , methodsRoassal collect: [ :m | m date asUnixTime ]) min.

b := RTGrapher new.
b extent: 300 @ 300.

ds := RTDataSet new
				points: methodsRoassal;
				x: [ :m | (m date asUnixTime - greatestAge) / 3600 ];
				y: #numberOfLinesOfCode.
ds dotShape circle color: (Color blue alpha: 0.3); size: 5.
ds interaction popup.
b add: ds.

ds := RTDataSet new
				points: methodsTrachel;
				x: [ :m | (m date asUnixTime - greatestAge) / 3600 ];
				y: #numberOfLinesOfCode.
ds dotShape circle color: (Color red alpha: 0.3); size: 5.
ds interaction popup.
b add: ds.


b axisX noDecimal; noLabel; title: 'Time'.
b axisY noDecimal; title: 'Number of lines of code'.

b build.
^ b view