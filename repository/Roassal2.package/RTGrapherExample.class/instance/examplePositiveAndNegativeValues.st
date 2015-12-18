sources
examplePositiveAndNegativeValues

| b ds |
b := RTGrapher new.
ds := RTStackedDataSet new. 
ds barShape
		width: 15;
		if: [:v | v < 0 ] fillColor: Color red;
		if: [:v | v > 0 ] fillColor: Color green.
ds points: #(5 -6 10 20 -9).
b add: ds.
b axisX noLabel; noTick. b axisY noDecimal.
b build.
^ b view