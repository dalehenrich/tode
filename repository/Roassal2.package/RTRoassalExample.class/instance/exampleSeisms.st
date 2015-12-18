sources
exampleSeisms

| b tab l|
tab := RTTabTable new input: 'http://earthquake.usgs.gov/earthquakes/feed/v1.0/summary/2.5_month.csv' asZnUrl retrieveContents usingDelimiter: $,.
tab removeFirstRow.
tab replaceEmptyValuesWith: '0' inColumns: #(2 3 4 5).
tab convertColumnsAsFloat: #(2 3 4 5).
b := RTMapLocationBuilder new.
b shape circle
size: [ :v | (2 raisedTo: v) / 2 ];
color: (Color red alpha: 0.3).
tab values do: [ :row | b addPoint: row second @ row third value: row fifth ].
b build.

l := RTLegendBuilder new.
l view: b view.
l addText: 'Seisms of a magniture of 2.5 or more, over the last 30 days'.
l build.
b view @ RTZoomableView.
^ b view