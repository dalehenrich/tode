examples
example03

	"self new example03"
	
	| b |
	b := RTMetricMap new.
	b countries: #(#('France' 50) #('Germany' 80)) named: #first metric: #second.
	b open