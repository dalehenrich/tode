layout
horizontalDominanceTreeLayout
	self view edges do: [ :e | e shape withHorizontalAttachPoint ].
	self layout: RTHorizontalDominanceTreeLayout new.
	^self layout