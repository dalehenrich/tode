as yet unclassified
setBackground
	| v x col b |
	
	v := self rtView.
	col:= ((Color fromHexString: '2F4E6F') alpha: 0).

	x := v canvas extent x .
	
	col := ((LinearGradientPaint new start: 0@(x negated); stop: 0@ (x *3); colorRamp: {0 -> (col alpha:1). 1 -> (Color white). })).
	
	b := ((RTBox new width: (v canvas extent x); height: (v canvas extent y); color: col) element).
	b translateTo: (v canvas extent x/2)@(v canvas extent y/2).
	
	v when: TRResizeCanvasEvent do: [ :evt |
		self updateShapeBackground: b in: v.
	].
	
	b when: TRMouseDragging do: [ :evt |
	].
	
	v add: b.