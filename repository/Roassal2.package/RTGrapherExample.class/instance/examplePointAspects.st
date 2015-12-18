sources
examplePointAspects
| b ds |
b := RTGrapher new.
b extent: 200 @ 100.

ds := RTStackedDataSet new.
ds dotShape rectangle color: Color red.
ds points: (RTShape withAllSubclasses sortedAs: #ageInDays).
ds y: [ :c | c ageInDays ].
b add: ds.

ds := RTStackedDataSet new.
ds dotShape circle color: Color blue.
ds points: (TRShape withAllSubclasses sortedAs: #ageInDays).
ds y: [ :c | c ageInDays ].
b add: ds.

b axisX noDecimal.
b build.

^ b view