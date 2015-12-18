adding
addMetric: blockOrSymbol max: kiviatMetricMaxValue title: aString
	kiviatMetrics add: (RTKiviatMetric new block: blockOrSymbol; named: aString; maxValue:kiviatMetricMaxValue ).