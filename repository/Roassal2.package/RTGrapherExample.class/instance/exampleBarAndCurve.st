sources
exampleBarAndCurve


| b ds |
b := RTGrapher new.
b extent: 400 @ 400.

ds := RTStackedDataSet new.
ds barShape color: (Color red).
ds points: (-3 to: 3.1415 * 5 by: 0.1).
ds y: [ :v | v sin ].

b add: ds.

ds := RTStackedDataSet new.
ds noDot.
ds connectColor: Color blue.
ds points: (-3 to: 3.1415 * 5 by: 0.1).
ds y: [ :v | v cos ].
b add: ds.

b build.
^ b view