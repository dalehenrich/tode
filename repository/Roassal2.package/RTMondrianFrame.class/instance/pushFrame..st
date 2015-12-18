frames
pushFrame: aFrame
	childrenFrame add: aFrame.
	aFrame parentFrame: self.
	aFrame depth: self depth + 1