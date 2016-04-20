interactions
inspectInteractionUsing: stonString
	| ar |
	ar := STON fromString: stonString.
	^ self inspectInteraction: (ar at: 1)