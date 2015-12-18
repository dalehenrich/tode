computing
cross: w
	|inst |
	inst := RTVector new.
	inst
		x: (y * w z) - (z * w y);
		y: (z * w x) - (x * w z);
		z: (x * w y) - (y * w x).
	^ inst