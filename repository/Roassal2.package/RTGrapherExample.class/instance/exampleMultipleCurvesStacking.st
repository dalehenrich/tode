sources
exampleMultipleCurvesStacking

| b points1 points2 minY maxY ds1 ds2 |
points1 := TRShape withAllSubclasses sortedAs: #numberOfVariables.
points2 := TRShape withAllSubclasses sortedAs: #numberOfMethods.

minY := 0.
maxY := (points1 maxValue: #numberOfVariables) max: (points2 maxValue: #numberOfMethods).

b := RTGrapher new.
b extent: 300 @ 200.

ds1 := RTStackedDataSet new.
ds1 points: points1.
ds1 connectColor: Color blue.
ds1 y: #numberOfVariables" min: minY max: maxY".
b add: ds1.

ds2 := RTStackedDataSet new.
ds2 points: points2.
ds2 connectColor: Color green.
ds2 y: #numberOfMethods" min: minY max: maxY".
b add: ds2.

b axisX noLabel.

b build.
^ b view