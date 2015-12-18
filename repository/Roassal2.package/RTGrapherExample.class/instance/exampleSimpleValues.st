sources
exampleSimpleValues

| b values ds |
b := RTGrapher new.
values := #(5 6 7 -1 -3).
b extent: 400 @ 300.

ds := RTStackedDataSet new.
ds interaction popup.
ds points: values.
ds connectColor: Color red.
ds y: #yourself.

b add: ds.

b axisXWithNumberOfTicks: values size.
b axisYWithNumberOfTicks: 6.
b build.
^ b view