examples
fixedRec
	"
	self new fixedRec
	"

	| c r1 r2 colors |
	c := TRCanvas new.
	r1 := c buildRectangle: ((0 @ 0) extent: (150 @ 75)) color: Color red.
	r2 := c buildRectangle: ((0 @ 0) extent: (130 @ 50)) color: Color lightGreen.
	c buildLineFrom: 50 @ 50 to: 80 @ 80 color: Color lightGreen.
	
	colors := Array with: Color red with: Color blue with: Color white.
	r1 when: TRMouseClick do: [ :event | event shape color: colors atRandom. c signalUpdate ].
	r2 when: TRMouseClick do: [ :event | r2 color: colors atRandom. c signalUpdate ].	
		
	r2 setAsFixed.
	
	c when: TRMouseDragging do: [ :event | c camera translateBy: event step negated. c signalUpdate ].
	c open