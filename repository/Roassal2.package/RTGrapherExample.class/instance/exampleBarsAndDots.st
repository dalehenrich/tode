sources
exampleBarsAndDots

| data b ds |
data := (-5 to: 5 by: 0.1).
 
b := RTGrapher new.

b extent: 300 @ 200.

ds := RTStackedDataSet new.
ds points: data.
ds y: #cos.
ds barShape color: (Color blue).
b add: ds.


ds := RTStackedDataSet new.
ds points: data.
ds y: #cos.
"ds barShape color: (Color blue)."

b add: ds.

b build.
^ b view