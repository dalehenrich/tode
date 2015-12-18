arithmetic
- w
	| inst |
	inst := RTVector new.
	inst x: x - w x y: y - w y z: z - w z.
	^ inst