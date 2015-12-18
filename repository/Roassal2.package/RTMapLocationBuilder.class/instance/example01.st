examples
example01

	"
	self new example01
	"
	| paris london santiago b |
	paris := 48.8567 @ 2.3508.
	london := 51.507222 @ -0.1275.
	santiago := -33.45 @ -70.666667.
	
	b := RTMapLocationBuilder new.
	b shape circle 
		size: #yourself;
		color: (Color red alpha: 0.4).
	b addPoint: paris value: 10. 
	b addPoint: london value: 15.
	b addPoint: santiago value: 20.
	b open