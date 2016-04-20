interactions
textInteractionRequestPasswordUsing: stonString
	| ar |
	ar := STON fromString: stonString.
	^ self textInteractionRequestPassword: (ar at: 1) 