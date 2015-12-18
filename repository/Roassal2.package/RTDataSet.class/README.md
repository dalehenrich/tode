A data set for which each element has to be plotted using two functions, one against the X-axis and another against the Y-axis), is modelled using the class RTDataSet. 

-=-=-=
"Since no x: and y: have been specified, it simply lines up all the values"
b := RTGrapher new.
ds := RTDataSet new. 
ds dotShape color: Color red. 
ds points: #(5 1 20 8).
b add: ds.
b build.
-=-=-=

-=-=-=
b := RTGrapher new.
ds := RTDataSet new. 
ds dotShape color: Color red. 
ds points: #(5 1 20 8).
ds y: [ :x | x * x ].
b add: ds.
b build.
-=-=-=

-=-=-=
b := RTGrapher new.
ds := RTDataSet new. 
ds dotShape color: Color red. 
ds points: (1 to: 100).
ds y: [ :x | x * x ].
b add: ds.
b build.
-=-=-=

-=-=-=
"Use objects instead of numerical values"
b := RTGrapher new.
ds := RTDataSet new. 
ds dotShape color: (Color red alpha: 0.3). 
ds points: Collection withAllSubclasses.
ds y: #numberOfLinesOfCode.
ds x: #numberOfMethods.
b add: ds.
b build.
-=-=-=