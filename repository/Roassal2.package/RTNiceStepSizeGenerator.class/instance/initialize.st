initialization
initialize
	"Generates a NiceNumberGenerator"
	
	super initialize.
	niceStep := RTNiceStep new.
	o := 0.0.
	self setQ: #(1 5 2 2.5 4 3) base: 10.
	