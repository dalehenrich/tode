interactions
choiceInteractionUsing: stonString
	| ar |
	ar := STON fromString: stonString.
	^ self
		choiceInteraction: (ar at: 1)
		labels: (ar at: 2)
		values: (ar at: 3)
		lines: (ar at: 4)