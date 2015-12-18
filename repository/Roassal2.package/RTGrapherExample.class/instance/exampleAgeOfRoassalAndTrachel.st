sources
exampleAgeOfRoassalAndTrachel
 
| methodsRoassal methodsTrachel greatestAge b ds |
methodsRoassal := RTObject withAllSubclasses flatCollect: #rtmethods.
methodsTrachel := TRObject withAllSubclasses flatCollect: #rtmethods.

methodsRoassal := methodsRoassal select: [ :m | m numberOfLinesOfCode < 300 ].
methodsTrachel := methodsTrachel select: [ :m | m numberOfLinesOfCode < 300 ].

greatestAge := (methodsTrachel , methodsRoassal collect: [ :m | m date asUnixTime ]) min.

b := RTGrapher new.
b extent: 300 @ 300.

ds := RTDataSet new.
ds interaction popup.
ds dotShape circle color: (Color blue alpha: 0.3); size: 5.
ds points: methodsRoassal.
ds x: [ :m | ((m date asUnixTime - greatestAge) / 3600) asFloat ] .
ds y: #numberOfLinesOfCode.
b add: ds.

ds := RTDataSet new.
ds dotShape circle color: (Color red alpha: 0.3); size: 5.
ds points: methodsTrachel.
ds x: [ :m | ((m date asUnixTime - greatestAge) / 3600) asFloat ] .
ds y: #numberOfLinesOfCode.
b add: ds.

b axisXWithNumberOfTicks: 4.
b axisYWithNumberOfTicks: 4.
b build.
^ b view