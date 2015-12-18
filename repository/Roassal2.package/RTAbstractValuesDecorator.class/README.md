The class RTAbstractValuesDecorator is the root of a class hierarchy made to labels some data points on the X and/or Y axis. Consider the following example:

b := RTGrapher new.

ds := RTDataSet new.
ds points: #(0 1 2 3 4 5 6).
b add: ds.

deco :=  RTHorizontalAllValuesDecorator new.
deco labelConversion: [ :value | '#', value asString ].
b addDecorator: deco.

deco :=  RTVerticalValuesDecorator new.
deco addAll: #(2 3 4).
deco labelConversion: [ :value | '#', value asString ].
b addDecorator: deco.

b axisX noTick; noLabel.
b axisY noTick; noLabel.
b 