examples
example02

	"self new example02"
	
	| b |
	b := RTMetricMap new.
	b countries: #(#('France' 50) #('Germany' 80)) named: #first.
	b open