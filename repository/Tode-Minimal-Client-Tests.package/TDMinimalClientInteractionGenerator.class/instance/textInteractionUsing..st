interactions
textInteractionUsing: stonString
	| ar |
	ar := STON fromString: stonString.
	^ self textInteraction: (ar at: 1) template: (ar at: 2)