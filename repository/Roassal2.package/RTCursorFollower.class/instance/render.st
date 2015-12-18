drawing
render
	| p pp |
	builder view
		when: TRMouseMove
		do: [ :evt | 
			p := evt positionFromCamera.
			(self isPointOverTheBuilder: p)
				ifTrue: [ 
					self createLinesAndLabelsIfNecessary.
					lineH from: 0 @ p y to: builder extent x @ p y.
					lineV from: p x @ 0 to: p x @ builder extent y negated.
					pp := self getPositionFromPixel: p.
					labelV text: (self getLabelXValueFor: pp).
					labelV translateTo: p x @ builder extent y negated.
					labelH text: (self getLabelYValueFor: pp).
					labelH translateTo: builder extent x @ p y.
					self updateCanvas ]
				ifFalse: [ self removeLinesAndLabelsIfNecessary ] ]