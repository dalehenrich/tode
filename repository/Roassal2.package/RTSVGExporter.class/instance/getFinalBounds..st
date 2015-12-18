svg
getFinalBounds: bounds
	canvasWidth := (bounds width + 2) rounded.
	canvasHeight := (bounds height + 2) rounded.
	finalWidth := canvasWidth.
	finalHeight  := canvasHeight.
	code = nil
		ifFalse: [ | maxW line w h|
			maxW := 0.
			line := ''.
			code lines do: [ :l | 
				maxW := maxW max: l size.
				maxW = l size
					ifTrue: [ line := l ].	
				].
			w := (TRLabelShape new
					text: line;
						width).
			h := (TRLabelShape new
					text: line;
						height).
			finalWidth := canvasWidth  + w.
			finalHeight := canvasHeight max: (h * code lines size) 			
			  ].
	^ Array with: finalWidth with: finalHeight