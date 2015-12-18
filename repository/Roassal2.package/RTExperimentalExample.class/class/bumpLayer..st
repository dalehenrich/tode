public - generation
bumpLayer: n
	"This method recibes a number and return an array of random numbers with that size
	Inspired by Lee Byron's test data generator."
	| rand arr bump |
	rand := Random new.
	bump := [ :a | | x y z |
		x := 1 / (0.1 + rand next).
		y := (2 * rand next)-0.5.
		z := 10 / (0.1 + rand next).
		
		(1 to: n) do: [ :i | | val w |
			w := (((i -1)/n) - y)*z.
			val := (a at: i) + (x * ((w negated * w) exp)).
			a at: i put: val. ] ].
	arr := Array new: n.
	(1 to: n) do: [ :i | arr at: i put: 0].
	(1 to: 5) do: [ :i | bump value: arr ].
	
	^ arr collectWithIndex: [ :d :i | i@(0 max: d)].