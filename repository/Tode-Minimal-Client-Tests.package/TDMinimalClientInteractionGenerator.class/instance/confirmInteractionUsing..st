interactions
confirmInteractionUsing: stonString
	| ar |
	ar := STON fromString: stonString.
	^ self
		confirmInteraction: (ar at: 1)
		confirm: (ar at: 2)
		cancel: (ar at: 3)
		abort: (ar at: 4)