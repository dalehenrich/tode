interactions
informInteractionUsing: stonString
	| ar |
	ar := STON fromString: stonString.
	^ self informInteraction: (ar at: 1)