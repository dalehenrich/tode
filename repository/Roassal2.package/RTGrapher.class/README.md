RTGrapher describes a chart. Data set may be added and axis may be configured. Consider the following example:

b := RTGrapher new.
ds := RTDataSet new. 
ds dotShape color: Color red. 
ds points: #(5 1 20 8).
b add: ds.
b build.
