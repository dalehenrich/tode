sources
exampledoubleCurves

| f g b ds xValues |
f := [ :x | x ].
g := [ :x | x * x ].

xValues := (0 to: 100 by: 0.1).

b := RTGrapher new.
b extent: 300 @ 200.

ds := RTDataSet new.
ds points: xValues.
ds y: g.
ds x: #yourself.
ds connectColor: Color green.
b add: ds.

ds := RTDataSet new.
ds points: xValues.
ds y: f.
ds x: #yourself.
ds connectColor: Color blue.
b add: ds.

b axisX; axisY.
b build.
^ b view