RTAverageDecorator is a decorator that indicates the average of a set of values.

Consider the following example:

-=-=-=-=
b := RTGrapher new.
ds := RTDataSet new. 
ds dotShape color: Color red. 
ds points: #(5 1 20 8).
b add: ds.
b addDecorator: (RTAverageDecorator new withLabel; labelConvertion: [ :aValue | 'average = ', aValue asFloat asString ]).
b build.
-=-=-=-=