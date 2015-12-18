stack
pushFrame: aFrame
	currentFrame pushFrame: aFrame.
	currentFrame := aFrame.
	^ aFrame