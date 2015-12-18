sources
exampleTwoGraphs

| force torque composer b ds |
force := Array with: (Array with: 'x' with: 3) with: (Array with: 'y' with: 4 ) with: (Array with: 'z' with: 5 ) .
torque := Array with: (Array with: 'x' with: 5) with: (Array with: 'y' with: -10) with: (Array with: 'z' with: 8) .

composer := RTComposer new.
"-------------"
"Force"
b := RTGrapher new.
b view: composer view.
ds := RTStackedDataSet new.
ds points: force.
ds y: #second.
ds barShape width: 30.
ds barChartWithBarTitle: #first rotation: 0.
b add: ds.
b axisX noLabel; noTick.
b build.
composer group: #force.
"-------------"
"Torque"
b := RTGrapher new.
b view: composer view.
ds := RTStackedDataSet new.
ds points: torque.
ds y: #second.
ds barShape width: 30.
ds histogramWithBarTitle: #first rotation: 0.

b add: ds.

b axisX noLabel; noTick.
b build.
composer group: #torque.

"-------------"
"Doing the layout of the graphs"
composer move: #force onTheLeftOf: #torque.
composer nameGroup: #force as: 'Force'.
composer nameGroup: #torque as: 'Torque'.
composer setGeneralTitle: 'Wrench'.
^ composer view