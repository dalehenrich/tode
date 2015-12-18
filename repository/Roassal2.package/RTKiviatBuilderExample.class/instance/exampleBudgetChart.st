sources
exampleBudgetChart
| b n |
	b := RTKiviatBuilder new.
	b objects: (Array with: ('Allocated Budget' -> #(60 15 25 8 40 20)) with: ('Actual Spending' -> #( 20 20 25 20 50 145) )).
	n := RTMultiLinearColorForIdentity new objects: (b objects).
	b shape circle color: [ :value | n rtValue: value kiviatNode named]; size: 10.

	b addMetric: [:e | e value at:1] title: 'Development'.
	b addMetric: [:e | e value at:2] title: 'Customer Support'.
	b addMetric: [:e | e value at:3] title: 'Information Technology'.
	b addMetric: [:e | e value at:4] title: 'Administration'.
	b addMetric: [:e | e value at:5] title: 'Sales'.
	b addMetric: [:e | e value at:6] title: 'Marketing'.
	b activateAxisTitle.
	b activatePolygons.

		b build.
	^ b view