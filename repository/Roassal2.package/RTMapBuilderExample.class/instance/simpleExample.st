as yet unclassified
simpleExample
	"self new simpleExample"
	| b |
	b := RTMapBuilder new.	
		
	b countries: #('Chile').
	b color: Color red.
	b scale: 3.
	b open.