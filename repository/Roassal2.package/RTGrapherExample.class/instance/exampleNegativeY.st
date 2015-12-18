sources
exampleNegativeY

| b ds |
b := RTGrapher new.
b extent: 200 @ 200.

ds := RTDataSet new.
ds points: (-3 to: 6).
ds y: [ :v | v - 4 ].
ds x: #yourself.
ds connect.
b add: ds.

b axisXWithNumberOfTicks: 4.
b axisYWithNumberOfTicks: 4.

b build.

^ b view