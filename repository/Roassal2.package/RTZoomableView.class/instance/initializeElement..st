hooks
initializeElement: aView
	aView canvas
		when: TRMouseWheelEvent
		do: [ :e | 
			| scale dist |
			dist := e position - aView canvas camera position.
			scale := aView canvas camera scale.
			e isUp   ifTrue: [ scale := scale * 1.25. dist := dist * 0.2 ].
			e isDown ifTrue: [ scale := scale * 0.8. dist := dist * -0.25 ].
			aView canvas camera scale: scale; translateBy: dist.
			aView signalUpdate ]