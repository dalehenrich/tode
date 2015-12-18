sources
exampleSeismDepthAndMag

|tab ds b |
tab := RTTabTable new input:  'http://earthquake.usgs.gov/earthquakes/feed/v1.0/summary/2.5_month.csv' asUrl retrieveContents usingDelimiter: $,.
tab removeFirstRow.
tab replaceEmptyValuesWith: '0' inColumns: #(4 5).
tab convertColumnsAsFloat: #(4 5).


b := RTGrapher new.
ds := RTDataSet new.
ds interaction popup.
ds points: tab values.
ds dotShape color: (Color blue alpha: 0.3).
ds x: [ :row | row at: 4 ].
ds y: [ :row | row at: 5 ].
b add: ds.

b maxY: 8.
b maxX: 700.

b axisX title: 'depth'.
b axisY title: 'magnitude'.
b build.
^ b view