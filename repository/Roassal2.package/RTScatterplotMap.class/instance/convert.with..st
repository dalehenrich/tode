as yet unclassified
convert: lat with: lon
	"
	self new convert: 55 with: -143
	"
	| phi0 lambda0 phi1 phi2 phi lambda n theta c rho rho0 x y |
	phi0 := 0.
	lambda0 := -96 degreesToRadians.
	phi1 := 29.5 degreesToRadians.
	phi2 := 45.5 degreesToRadians.
	
	phi := lat degreesToRadians.
	lambda := lon degreesToRadians.
	
	n := 0.5 * (phi1 sin + phi2 sin).
	theta := n * (lambda - lambda0).
	c := phi1 cos + (2 * n * phi1 sin).
	c := c * c.
	rho := (c - (2 * n * phi sin)) sqrt / n.
	rho0 := (c - (2 * n * phi0 sin)) sqrt / n.
	
	x := rho * theta sin.
	y := rho0 - (rho * theta cos).
	
	^ x @ y