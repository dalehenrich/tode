interactions
multiLineTextInteractionUsing: stonString
	| ar |
	ar := STON fromString: stonString.
	^ self multiLineTextInteraction: (ar at: 1) template: (ar at: 2)