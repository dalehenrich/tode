interactions
notifyInteractionUsing: stonString
	| ar |
	ar := STON fromString: stonString.
	^ self
		notifyInteraction: (ar at: 1)
		confirm: (ar at: 2)
		cancel: (ar at: 3)
		abort: (ar at: 4)