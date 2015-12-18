accessing
indexesFor: f
	"f - float is between 0.0 and 1.0. Return an array of length two"
	| nbColors v i1 i2      |
	nbColors := colors size.
	
	v := f * (nbColors - 1).
	i1 := v asInteger + 1.
	i2 := i1 + 1.
	
	^ Array with: i1 with: i2