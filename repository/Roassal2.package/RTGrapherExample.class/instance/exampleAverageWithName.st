sources
exampleAverageWithName

| b ds |
b := RTGrapher new.
ds := RTDataSet new. 
ds dotShape color: Color red. 
ds points: #(5 1 20 8).
b add: ds.
b addDecorator: (RTAverageDecorator new withLabel; labelConvertion: [ :aValue | 'average = ', aValue asFloat asString ]).
b build.

^ b view