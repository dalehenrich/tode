sources
examplesinAndCos
| b ds |
b := RTGrapher new.
b extent: 400 @ 400.

ds := RTDataSet new.
ds dotShape rectangle size: 0.
ds points: (-3 to: 3.1415 * 5 by: 0.01).
ds y: [ :v | v sin ].
ds x: #yourself.
ds connectColor: (Color red alpha: 0.4).
b add: ds.

ds := RTDataSet new.
ds dotShape rectangle size: 0.
ds points: (0 to: 3.1415 * 5 by: 0.01).
ds y: [ :v | v cos ].
ds x: #yourself.
ds connectColor: (Color blue alpha: 0.4).
b add: ds.

b build.
^ b view