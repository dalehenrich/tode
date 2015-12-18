A data set is a set of points intended to be charted. 
Data points may be stacked, meaning that the index of the point in the collec- tion is its X value. This is useful in case that data points are not obtained by applying a function. 

RTStackedDataSet describes a stacked data set. 

Consider the following examples:
-=-=-=-=
b := RTGrapher new.
ds := RTStackedDataSet new. ds dotShape color: Color red. ds points: #(5 1 20 5).
b add: ds.
b axisX noLabel; noTick. b axisY noDecimal.
b build.
-=-=-=-=

Adding bar
-=-=-=-=
b := RTGrapher new.
ds := RTStackedDataSet new. ds dotShape color: Color red. ds points: #(5 1 20 5).
ds barShape width: 10; color: Color blue.
b add: ds.
b axisX noLabel; noTick. b axisY noDecimal.
b build.
-=-=-=-=

-=-=-=-=
b := RTGrapher new.
ds := RTStackedDataSet new. ds dotShape color: Color red. ds points: #(5 1 20 5).
ds barShape width: 10; color: Color blue.
ds histogramWithBarTitle: #yourself.
b add: ds.
b axisX noLabel; noTick. b axisY noDecimal.
b build.
-=-=-=-=

In case you do not need the rotation:
-=-=-=-=
b := RTGrapher new.
ds := RTStackedDataSet new. ds dotShape color: Color red. ds points: #(5 1 20 5).
ds barShape width: 10; color: Color blue.
ds histogramWithBarTitle: #yourself rotation: 0.
b add: ds.
b axisX noLabel; noTick. b axisY noDecimal.
b build.
-=-=-=-=

In case you prefer to have objects:
-=-=-=-=
b := RTGrapher new.
b extent: 500 @ 200.
ds := RTStackedDataSet new. 
ds interaction popupText; highlight.
ds dotShape color: Color red. 
ds points: RTShape withAllSubclasses.
ds y: #numberOfMethods.
ds barShape width: 10; color: Color blue.
ds histogramWithBarTitle: #name.
b add: ds.
b axisX noLabel; noTick. b axisY noDecimal.
b build.
-=-=-=-=